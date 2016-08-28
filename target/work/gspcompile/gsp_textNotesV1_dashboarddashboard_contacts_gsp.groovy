import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_dashboarddashboard_contacts_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/dashboard_contacts.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'fcontent':("IE=edge")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',10,[:],2)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'content':("width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"),'name':("viewport")],-1)
printHtmlPart(4)
invokeTag('resource','g',15,['dir':("css"),'file':("dashboard/bootstrap/css/bootstrap.min.css")],-1)
printHtmlPart(5)
invokeTag('resource','g',24,['dir':("css"),'file':("dashboard/AdminLTE.min.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',26,['dir':("css"),'file':("dashboard/CustomCSS.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',32,['dir':("css"),'file':("dashboard/skins/skin-purple.min.css")],-1)
printHtmlPart(8)
})
invokeTag('captureHead','sitemesh',41,[:],1)
printHtmlPart(9)
createTagBody(1, {->
printHtmlPart(10)
expressionOut.print(createLink(controller: 'Dashboard', action: 'dashboard'))
printHtmlPart(11)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(12)
expressionOut.print(session.firstName)
printHtmlPart(13)
expressionOut.print(session.lastName)
printHtmlPart(14)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(15)
expressionOut.print(session.firstName)
printHtmlPart(13)
expressionOut.print(session.lastName)
printHtmlPart(16)
invokeTag('formatDate','g',108,['format':("yyyy"),'date':(session.signUpDate)],-1)
printHtmlPart(17)
expressionOut.print(createLink(controller: 'Home'))
printHtmlPart(18)
expressionOut.print(createLink(controller: 'login', action: 'logout'))
printHtmlPart(19)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(20)
expressionOut.print(session.firstName)
printHtmlPart(13)
expressionOut.print(session.lastName)
printHtmlPart(21)
createClosureForHtmlPart(22, 2)
invokeTag('form','g',168,['controller':("Dashboard"),'action':("dashboard"),'enctype':("multipart/form-data"),'class':("sidebar-form")],2)
printHtmlPart(23)
expressionOut.print(createLink(controller: 'Dashboard', action: 'dashboard'))
printHtmlPart(24)
expressionOut.print(createLink(controller: 'Dashboard', action: 'groups'))
printHtmlPart(25)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(26)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createGroup'))
printHtmlPart(27)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(28)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createGroup'))
printHtmlPart(29)
expressionOut.print(createLink(controller: 'Dashboard', action: 'sendTxt'))
printHtmlPart(30)
expressionOut.print(createLink(controller: 'Dashboard', action: 'secheduledTxt'))
printHtmlPart(31)
expressionOut.print(createLink(controller: 'Dashboard', action: 'txtHostory'))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'Dashboard', action: 'ViewPromos'))
printHtmlPart(33)
expressionOut.print(createLink(controller: 'Dashboard', action: 'validatePromo'))
printHtmlPart(34)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createPromo'))
printHtmlPart(35)
if(true && (clientCount == 0)) {
printHtmlPart(36)
}
printHtmlPart(37)
expressionOut.print(searchQueryHidden)
printHtmlPart(38)
expressionOut.print(offset)
printHtmlPart(39)
expressionOut.print(clientCount)
printHtmlPart(40)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(41)
createTagBody(2, {->
printHtmlPart(42)
invokeTag('actionSubmit','g',269,['action':("contacts"),'class':("btn btn-info btn-flat"),'type':("button"),'value':("Search")],-1)
printHtmlPart(43)
})
invokeTag('form','g',273,['id':("searchForm"),'controller':("Dashboard"),'action':("dashboard"),'enctype':("multipart/form-data")],2)
printHtmlPart(44)
if(true && (clientCount > 0 || offset > 0)) {
printHtmlPart(45)
if(true && (contacts != 'NONE')) {
printHtmlPart(46)
for( _it96172633 in (contacts) ) {
changeItVariable(_it96172633)
printHtmlPart(47)
expressionOut.print(it.contactID)
printHtmlPart(48)
expressionOut.print(it.firstName)
printHtmlPart(13)
expressionOut.print(it.lastName)
printHtmlPart(49)
expressionOut.print(it.phoneNumber)
printHtmlPart(50)
if(true && (it.city)) {
printHtmlPart(51)
expressionOut.print(it.city,)
printHtmlPart(52)
expressionOut.print(it.state)
printHtmlPart(53)
}
else {
printHtmlPart(54)
}
printHtmlPart(55)
if(true && (it.subbed =! 'false')) {
printHtmlPart(56)
}
else {
printHtmlPart(57)
}
printHtmlPart(58)
}
printHtmlPart(59)
}
else {
printHtmlPart(60)
if(true && (isSearch)) {
printHtmlPart(61)
expressionOut.print(createLink(controller: 'Dashboard'))
printHtmlPart(62)
}
else {
printHtmlPart(63)
}
printHtmlPart(64)
}
printHtmlPart(65)
}
else {
printHtmlPart(66)
if(true && (isSearch)) {
printHtmlPart(61)
expressionOut.print(createLink(controller: 'Dashboard'))
printHtmlPart(62)
}
else {
printHtmlPart(61)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(67)
}
printHtmlPart(68)
}
printHtmlPart(69)
if(true && (offset > 0)) {
printHtmlPart(70)
createClosureForHtmlPart(71, 3)
invokeTag('link','g',373,['action':("contacts"),'params':([offset: offset, up: 'false', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],3)
printHtmlPart(72)
}
else {
printHtmlPart(73)
}
printHtmlPart(74)
if(true && (offset <= clientCount)) {
printHtmlPart(75)
createClosureForHtmlPart(76, 3)
invokeTag('link','g',380,['action':("contacts"),'params':([offset: offset, up: 'true', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],3)
printHtmlPart(77)
}
else {
printHtmlPart(78)
}
printHtmlPart(79)
expressionOut.print(currentPage)
printHtmlPart(80)
if(true && (contacts && contacts != 'NONE')) {
printHtmlPart(81)
for( _it1274699449 in (contacts) ) {
changeItVariable(_it1274699449)
printHtmlPart(82)
expressionOut.print(it.contactID)
printHtmlPart(83)
expressionOut.print(it.firstName)
printHtmlPart(13)
expressionOut.print(it.lastName)
printHtmlPart(84)
createClosureForHtmlPart(85, 4)
invokeTag('link','g',490,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("sendTxt"),'params':([contactID: it.contactID]),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(86)
createClosureForHtmlPart(87, 4)
invokeTag('link','g',497,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("editContact"),'params':([contactID: it.contactID]),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(88)
createClosureForHtmlPart(89, 4)
invokeTag('link','g',501,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("details"),'params':([contactID: it.contactID, conType: 'Contact']),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(90)
createClosureForHtmlPart(91, 4)
invokeTag('link','g',506,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("groups"),'params':([contactID: it.contactID, addToGroup: 'True']),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(92)
}
printHtmlPart(93)
}
printHtmlPart(94)
invokeTag('javascript','g',523,['src':("dashboard/plugins/jQuery/jQuery-2.1.4.min.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',526,['src':("dashboard/bootstrap/js/bootstrap.min.js")],-1)
printHtmlPart(96)
invokeTag('javascript','g',529,['src':("dashboard/app.min.js")],-1)
printHtmlPart(97)
})
invokeTag('captureBody','sitemesh',537,['class':("hold-transition skin-purple sidebar-mini")],1)
printHtmlPart(98)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1471999151697L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
