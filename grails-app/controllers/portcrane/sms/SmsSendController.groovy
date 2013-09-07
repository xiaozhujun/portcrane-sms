package portcrane.sms

import org.springframework.dao.DataIntegrityViolationException

class SmsSendController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [smsSendInstanceList: SmsSend.list(params), smsSendInstanceTotal: SmsSend.count()]
    }

    def create() {
        [smsSendInstance: new SmsSend(params)]
    }

    def save() {
        def smsSendInstance = new SmsSend(params)
        if (!smsSendInstance.save(flush: true)) {
            render(view: "create", model: [smsSendInstance: smsSendInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), smsSendInstance.id])
        redirect(action: "show", id: smsSendInstance.id)
    }

    def show(Long id) {
        def smsSendInstance = SmsSend.get(id)
        if (!smsSendInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), id])
            redirect(action: "list")
            return
        }

        [smsSendInstance: smsSendInstance]
    }

    def edit(Long id) {
        def smsSendInstance = SmsSend.get(id)
        if (!smsSendInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), id])
            redirect(action: "list")
            return
        }

        [smsSendInstance: smsSendInstance]
    }

    def update(Long id, Long version) {
        def smsSendInstance = SmsSend.get(id)
        if (!smsSendInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (smsSendInstance.version > version) {
                smsSendInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'smsSend.label', default: 'SmsSend')] as Object[],
                          "Another user has updated this SmsSend while you were editing")
                render(view: "edit", model: [smsSendInstance: smsSendInstance])
                return
            }
        }

        smsSendInstance.properties = params

        if (!smsSendInstance.save(flush: true)) {
            render(view: "edit", model: [smsSendInstance: smsSendInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), smsSendInstance.id])
        redirect(action: "show", id: smsSendInstance.id)
    }

    def delete(Long id) {
        def smsSendInstance = SmsSend.get(id)
        if (!smsSendInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), id])
            redirect(action: "list")
            return
        }

        try {
            smsSendInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'smsSend.label', default: 'SmsSend'), id])
            redirect(action: "show", id: id)
        }
    }
}
