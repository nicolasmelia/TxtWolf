import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_txtWolfMain_dashboardview_Drafts_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/view_Drafts.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'fcontent':("IE=edge")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':(""),'content':("width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"),'name':("viewport")],-1)
printHtmlPart(5)
invokeTag('resource','g',16,['dir':("css"),'file':("dashboard/bootstrap/css/bootstrap.min.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',22,['dir':("css"),'file':("dashboard/AdminLTE.min.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',23,['dir':("css"),'file':("dashboard/CustomCSS.css")],-1)
printHtmlPart(8)
invokeTag('resource','g',28,['dir':("css"),'file':("dashboard/skins/skin-purple.min.css")],-1)
printHtmlPart(9)
})
invokeTag('captureHead','sitemesh',45,[:],1)
printHtmlPart(10)
createTagBody(1, {->
printHtmlPart(11)
expressionOut.print(createLink(controller: 'Dashboard', action: 'dashboard'))
printHtmlPart(12)
expressionOut.print(notiCount)
printHtmlPart(13)
if(true && (keywordsIn != 'NONE')) {
printHtmlPart(14)
for( _it992775130 in (keywordsIn) ) {
changeItVariable(_it992775130)
printHtmlPart(15)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(16)
expressionOut.print(it.keyword)
printHtmlPart(17)
expressionOut.print(it.phoneNumber)
printHtmlPart(18)
invokeTag('formatDate','g',79,['format':("MM-dd-yyyy"),'date':(it.date)],-1)
printHtmlPart(19)
}
printHtmlPart(20)
}
else {
printHtmlPart(21)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(22)
}
printHtmlPart(23)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(24)
expressionOut.print(createLink(controller: 'dashboard'))
printHtmlPart(25)
expressionOut.print(createLink(controller: 'Blog'))
printHtmlPart(26)
expressionOut.print(createLink(controller: 'dashboard', action: 'help'))
printHtmlPart(27)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(28)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(29)
expressionOut.print(session.firstName)
printHtmlPart(30)
expressionOut.print(session.lastName)
printHtmlPart(31)
invokeTag('formatDate','g',132,['format':("yyyy"),'date':(session.signUpDate)],-1)
printHtmlPart(32)
expressionOut.print(createLink(controller: 'dashboard', action: 'accountSettings'))
printHtmlPart(33)
expressionOut.print(createLink(controller: 'login', action: 'logout'))
printHtmlPart(34)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(35)
expressionOut.print(session.firstName)
printHtmlPart(30)
expressionOut.print(session.lastName)
printHtmlPart(36)
createClosureForHtmlPart(37, 2)
invokeTag('form','g',173,['controller':("Dashboard"),'action':("contacts"),'enctype':("multipart/form-data"),'class':("sidebar-form")],2)
printHtmlPart(38)
expressionOut.print(createLink(controller: 'Dashboard', action: 'Dashboard'))
printHtmlPart(39)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(40)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createGroup'))
printHtmlPart(41)
expressionOut.print(createLink(controller: 'Dashboard', action: 'contacts'))
printHtmlPart(42)
expressionOut.print(createLink(controller: 'Dashboard', action: 'groups'))
printHtmlPart(43)
expressionOut.print(createLink(controller: 'Dashboard', action: 'sendTxt'))
printHtmlPart(44)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newDraft'))
printHtmlPart(45)
expressionOut.print(createLink(controller: 'Dashboard', action: 'drafts'))
printHtmlPart(46)
expressionOut.print(createLink(controller: 'Dashboard', action: 'secheduledTxt'))
printHtmlPart(47)
expressionOut.print(createLink(controller: 'Dashboard', action: 'tips'))
printHtmlPart(48)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newKeyWord'))
printHtmlPart(49)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywords'))
printHtmlPart(50)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(51)
expressionOut.print(createLink(controller: 'Dashboard', action: 'validateCoup'))
printHtmlPart(52)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywords', params: [type: 'contestSelect']))
printHtmlPart(53)
expressionOut.print(createLink(controller: 'Dashboard', action: 'balance'))
printHtmlPart(54)
expressionOut.print(createLink(controller: 'Dashboard', action: 'history'))
printHtmlPart(55)
expressionOut.print(createLink(controller: 'Dashboard', action: 'accountSettings'))
printHtmlPart(56)
if(true && (newlyAdded)) {
printHtmlPart(57)
}
printHtmlPart(58)
expressionOut.print(searchQueryHidden)
printHtmlPart(59)
expressionOut.print(offset)
printHtmlPart(60)
expressionOut.print(clientCount)
printHtmlPart(61)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newDraft'))
printHtmlPart(62)
if(true && (clientCount > 0 || offset > 0)) {
printHtmlPart(20)
if(true && (draftList != 'NONE')) {
printHtmlPart(14)
for( _it1754096028 in (draftList) ) {
changeItVariable(_it1754096028)
printHtmlPart(63)
expressionOut.print(createLink(controller: 'Dashboard', action: 'sendTxt', params: [draftID:it.draftID]))
printHtmlPart(64)
expressionOut.print(it.draftName)
printHtmlPart(65)
expressionOut.print(it.message)
printHtmlPart(66)
invokeTag('formatDate','g',303,['format':("MM-dd-yyyy"),'date':(it.dateCreated)],-1)
printHtmlPart(67)
}
printHtmlPart(20)
}
else {
printHtmlPart(14)
if(true && (isSearch)) {
printHtmlPart(63)
expressionOut.print(createLink(controller: 'Dashboard'))
printHtmlPart(68)
}
else {
printHtmlPart(69)
}
printHtmlPart(20)
}
printHtmlPart(70)
}
else {
printHtmlPart(20)
if(true && (isSearch)) {
printHtmlPart(71)
expressionOut.print(createLink(controller: 'Dashboard'))
printHtmlPart(72)
}
else {
printHtmlPart(73)
}
printHtmlPart(70)
}
printHtmlPart(74)
if(true && (offset > 0)) {
printHtmlPart(75)
createClosureForHtmlPart(76, 3)
invokeTag('link','g',355,['action':("drafts"),'params':([offset: offset, up: 'false', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],3)
printHtmlPart(77)
}
else {
printHtmlPart(78)
}
printHtmlPart(77)
if(true && (offset <= clientCount)) {
printHtmlPart(75)
createClosureForHtmlPart(79, 3)
invokeTag('link','g',361,['action':("drafts"),'params':([offset: offset, up: 'true', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],3)
printHtmlPart(77)
}
else {
printHtmlPart(80)
}
printHtmlPart(81)
expressionOut.print(currentPage)
printHtmlPart(82)
invokeTag('javascript','g',389,['src':("dashboard/plugins/jQuery/jQuery-2.1.4.min.js")],-1)
printHtmlPart(83)
invokeTag('javascript','g',391,['src':("dashboard/bootstrap/js/bootstrap.min.js")],-1)
printHtmlPart(84)
invokeTag('javascript','g',393,['src':("dashboard/app.min.js")],-1)
printHtmlPart(85)
})
invokeTag('captureBody','sitemesh',398,['class':("hold-transition skin-purple sidebar-mini")],1)
printHtmlPart(86)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1483923622893L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
