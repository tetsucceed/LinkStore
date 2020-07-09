package linkstore

import org.springframework.dao.DataIntegrityViolationException

class LinkStoreDomainController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def just_text() {
       //def linkStoreDomainInstance = LinkStoreDomain.get(params.id)
       flash.myMessage = select_link()
       render(view: "just_text")
    }
    def select_link() {
        return "list"
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [linkStoreDomainInstanceList: LinkStoreDomain.list(params), linkStoreDomainInstanceTotal: LinkStoreDomain.count()]
    }

    def create() {
        [linkStoreDomainInstance: new LinkStoreDomain(params)]
    }

    def save() {
        def linkStoreDomainInstance = new LinkStoreDomain(params)
        if (!linkStoreDomainInstance.save(flush: true)) {
            render(view: "create", model: [linkStoreDomainInstance: linkStoreDomainInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), linkStoreDomainInstance.id])
        redirect(action: "show", id: linkStoreDomainInstance.id)
    }

    def show() {
        def linkStoreDomainInstance = LinkStoreDomain.get(params.id)
        if (!linkStoreDomainInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), params.id])
            redirect(action: "list")
            return
        }

        [linkStoreDomainInstance: linkStoreDomainInstance]
    }

    def edit() {
        def linkStoreDomainInstance = LinkStoreDomain.get(params.id)
        if (!linkStoreDomainInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), params.id])
            redirect(action: "list")
            return
        }

        [linkStoreDomainInstance: linkStoreDomainInstance]
    }

    def update() {
        def linkStoreDomainInstance = LinkStoreDomain.get(params.id)
        if (!linkStoreDomainInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (linkStoreDomainInstance.version > version) {
                linkStoreDomainInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain')] as Object[],
                          "Another user has updated this LinkStoreDomain while you were editing")
                render(view: "edit", model: [linkStoreDomainInstance: linkStoreDomainInstance])
                return
            }
        }

        linkStoreDomainInstance.properties = params

        if (!linkStoreDomainInstance.save(flush: true)) {
            render(view: "edit", model: [linkStoreDomainInstance: linkStoreDomainInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), linkStoreDomainInstance.id])
        redirect(action: "show", id: linkStoreDomainInstance.id)
    }

    def delete() {
        def linkStoreDomainInstance = LinkStoreDomain.get(params.id)
        if (!linkStoreDomainInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), params.id])
            redirect(action: "list")
            return
        }

        try {
            linkStoreDomainInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
