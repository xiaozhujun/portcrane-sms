package portcrane.sms



import org.junit.*
import grails.test.mixin.*

@TestFor(SmsSentController)
@Mock(SmsSent)
class SmsSentControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/smsSent/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.smsSentInstanceList.size() == 0
        assert model.smsSentInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.smsSentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.smsSentInstance != null
        assert view == '/smsSent/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/smsSent/show/1'
        assert controller.flash.message != null
        assert SmsSent.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/smsSent/list'

        populateValidParams(params)
        def smsSent = new SmsSent(params)

        assert smsSent.save() != null

        params.id = smsSent.id

        def model = controller.show()

        assert model.smsSentInstance == smsSent
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/smsSent/list'

        populateValidParams(params)
        def smsSent = new SmsSent(params)

        assert smsSent.save() != null

        params.id = smsSent.id

        def model = controller.edit()

        assert model.smsSentInstance == smsSent
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/smsSent/list'

        response.reset()

        populateValidParams(params)
        def smsSent = new SmsSent(params)

        assert smsSent.save() != null

        // test invalid parameters in update
        params.id = smsSent.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/smsSent/edit"
        assert model.smsSentInstance != null

        smsSent.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/smsSent/show/$smsSent.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        smsSent.clearErrors()

        populateValidParams(params)
        params.id = smsSent.id
        params.version = -1
        controller.update()

        assert view == "/smsSent/edit"
        assert model.smsSentInstance != null
        assert model.smsSentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/smsSent/list'

        response.reset()

        populateValidParams(params)
        def smsSent = new SmsSent(params)

        assert smsSent.save() != null
        assert SmsSent.count() == 1

        params.id = smsSent.id

        controller.delete()

        assert SmsSent.count() == 0
        assert SmsSent.get(smsSent.id) == null
        assert response.redirectedUrl == '/smsSent/list'
    }
}
