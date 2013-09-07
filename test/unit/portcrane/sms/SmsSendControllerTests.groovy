package portcrane.sms



import org.junit.*
import grails.test.mixin.*

@TestFor(SmsSendController)
@Mock(SmsSend)
class SmsSendControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/smsSend/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.smsSendInstanceList.size() == 0
        assert model.smsSendInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.smsSendInstance != null
    }

    void testSave() {
        controller.save()

        assert model.smsSendInstance != null
        assert view == '/smsSend/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/smsSend/show/1'
        assert controller.flash.message != null
        assert SmsSend.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/smsSend/list'

        populateValidParams(params)
        def smsSend = new SmsSend(params)

        assert smsSend.save() != null

        params.id = smsSend.id

        def model = controller.show()

        assert model.smsSendInstance == smsSend
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/smsSend/list'

        populateValidParams(params)
        def smsSend = new SmsSend(params)

        assert smsSend.save() != null

        params.id = smsSend.id

        def model = controller.edit()

        assert model.smsSendInstance == smsSend
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/smsSend/list'

        response.reset()

        populateValidParams(params)
        def smsSend = new SmsSend(params)

        assert smsSend.save() != null

        // test invalid parameters in update
        params.id = smsSend.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/smsSend/edit"
        assert model.smsSendInstance != null

        smsSend.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/smsSend/show/$smsSend.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        smsSend.clearErrors()

        populateValidParams(params)
        params.id = smsSend.id
        params.version = -1
        controller.update()

        assert view == "/smsSend/edit"
        assert model.smsSendInstance != null
        assert model.smsSendInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/smsSend/list'

        response.reset()

        populateValidParams(params)
        def smsSend = new SmsSend(params)

        assert smsSend.save() != null
        assert SmsSend.count() == 1

        params.id = smsSend.id

        controller.delete()

        assert SmsSend.count() == 0
        assert SmsSend.get(smsSend.id) == null
        assert response.redirectedUrl == '/smsSend/list'
    }
}
