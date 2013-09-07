package portcrane.sms

import org.springframework.dao.DataIntegrityViolationException

class SmsSentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [smsSentInstanceList: SmsSent.list(params), smsSentInstanceTotal: SmsSent.count()]
    }

    def create() {
        [smsSentInstance: new SmsSent(params)]
    }

    def save() {
        def smsSentInstance = new SmsSent(params)
        if (!smsSentInstance.save(flush: true)) {
            render(view: "create", model: [smsSentInstance: smsSentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), smsSentInstance.id])
        redirect(action: "show", id: smsSentInstance.id)
    }

    def show(Long id) {
        def smsSentInstance = SmsSent.get(id)
        if (!smsSentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), id])
            redirect(action: "list")
            return
        }

        [smsSentInstance: smsSentInstance]
    }

    def edit(Long id) {
        def smsSentInstance = SmsSent.get(id)
        if (!smsSentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), id])
            redirect(action: "list")
            return
        }

        [smsSentInstance: smsSentInstance]
    }

    def update(Long id, Long version) {
        def smsSentInstance = SmsSent.get(id)
        if (!smsSentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (smsSentInstance.version > version) {
                smsSentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'smsSent.label', default: 'SmsSent')] as Object[],
                          "Another user has updated this SmsSent while you were editing")
                render(view: "edit", model: [smsSentInstance: smsSentInstance])
                return
            }
        }

        smsSentInstance.properties = params

        if (!smsSentInstance.save(flush: true)) {
            render(view: "edit", model: [smsSentInstance: smsSentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), smsSentInstance.id])
        redirect(action: "show", id: smsSentInstance.id)
    }

    def delete(Long id) {
        def smsSentInstance = SmsSent.get(id)
        if (!smsSentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), id])
            redirect(action: "list")
            return
        }

        try {
            smsSentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'smsSent.label', default: 'SmsSent'), id])
            redirect(action: "show", id: id)
        }
    }
}
