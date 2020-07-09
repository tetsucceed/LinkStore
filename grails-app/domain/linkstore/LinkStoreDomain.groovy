package linkstore

class LinkStoreDomain {
    Long LinkId = id
    String BaseLink
    Integer LinkClass
    String LinkDescription

    LinkStoreDomain(Long linkId, String baseLink, Integer linkClass, String linkDescription) {
        LinkId = linkId
        BaseLink = baseLink
        LinkClass = linkClass
        LinkDescription = linkDescription
    }

    void setLinkId(Long linkId) {
        LinkId = id
    }

    void setBaseLink(String baseLink) {
        BaseLink = baseLink
    }

    void setLinkClass(Integer linkClass) {
        LinkClass = linkClass
    }

    void setLinkDescription(String linkDescription) {
        LinkDescription = linkDescription
    }

    Long getLinkId() {
        return LinkId
    }

    String getBaseLink() {
        return BaseLink
    }

    Integer getLinkClass() {
        return LinkClass
    }

    String getLinkDescription() {
        return LinkDescription
    }

    static constraints = {
    }
}
