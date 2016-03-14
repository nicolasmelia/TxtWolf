import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_dashboarddashboard_home_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/dashboard_home.gsp" }
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
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(13)
expressionOut.print(session.firstName)
printHtmlPart(14)
expressionOut.print(session.lastName)
printHtmlPart(15)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(16)
expressionOut.print(session.firstName)
printHtmlPart(14)
expressionOut.print(session.lastName)
printHtmlPart(17)
invokeTag('formatDate','g',139,['format':("yyyy"),'date':(session.signUpDate)],-1)
printHtmlPart(18)
expressionOut.print(createLink(controller: 'Home'))
printHtmlPart(19)
expressionOut.print(createLink(controller: 'login', action: 'logout'))
printHtmlPart(20)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(21)
expressionOut.print(session.firstName)
printHtmlPart(14)
expressionOut.print(session.lastName)
printHtmlPart(22)
createClosureForHtmlPart(23, 2)
invokeTag('form','g',199,['controller':("Dashboard"),'action':("dashboard"),'enctype':("multipart/form-data"),'class':("sidebar-form")],2)
printHtmlPart(24)
expressionOut.print(createLink(controller: 'Dashboard', action: 'dashboard'))
printHtmlPart(25)
expressionOut.print(createLink(controller: 'Dashboard', action: 'groups'))
printHtmlPart(26)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(27)
expressionOut.print(createLink(controller: 'Dashboard', action: 'sendTxt'))
printHtmlPart(28)
expressionOut.print(createLink(controller: 'Dashboard', action: 'secheduledTxt'))
printHtmlPart(29)
expressionOut.print(createLink(controller: 'Dashboard', action: 'txtHostory'))
printHtmlPart(30)
expressionOut.print(createLink(controller: 'Dashboard', action: 'ViewPromos'))
printHtmlPart(31)
expressionOut.print(createLink(controller: 'Dashboard', action: 'validatePromo'))
printHtmlPart(32)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createPromo'))
printHtmlPart(33)
if(true && (clientCount > 0)) {
printHtmlPart(34)
}
printHtmlPart(35)
expressionOut.print(searchQueryHidden)
printHtmlPart(36)
createTagBody(2, {->
printHtmlPart(37)
invokeTag('actionSubmit','g',279,['action':("dashboard"),'class':("btn btn-info btn-flat"),'type':("button"),'value':("Search")],-1)
printHtmlPart(38)
})
invokeTag('form','g',283,['id':("searchForm"),'controller':("Dashboard"),'action':("dashboard"),'enctype':("multipart/form-data")],2)
printHtmlPart(39)
if(true && (contacts || offset > 0)) {
printHtmlPart(40)
if(true && (contacts != 'NONE')) {
printHtmlPart(41)
for( _it68808938 in (contacts) ) {
changeItVariable(_it68808938)
printHtmlPart(42)
expressionOut.print(it.firstName)
printHtmlPart(14)
expressionOut.print(it.lastName)
printHtmlPart(43)
expressionOut.print(it.contactID)
printHtmlPart(44)
expressionOut.print(it.firstName)
printHtmlPart(14)
expressionOut.print(it.lastName)
printHtmlPart(45)
expressionOut.print(it.phoneNumber)
printHtmlPart(46)
if(true && (it.city)) {
printHtmlPart(47)
expressionOut.print(it.city,)
printHtmlPart(48)
expressionOut.print(it.state)
printHtmlPart(49)
}
else {
printHtmlPart(50)
}
printHtmlPart(51)
}
printHtmlPart(52)
}
else {
printHtmlPart(53)
}
printHtmlPart(54)
}
else {
printHtmlPart(55)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(56)
}
printHtmlPart(57)
createClosureForHtmlPart(58, 2)
invokeTag('link','g',356,['action':("dashboard"),'params':([offset: offset, up: 'false', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],2)
printHtmlPart(59)
createClosureForHtmlPart(60, 2)
invokeTag('link','g',357,['action':("dashboard"),'params':([offset: offset, up: 'true', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],2)
printHtmlPart(61)
if(true && (contacts && contacts != 'NONE')) {
printHtmlPart(62)
for( _it47479558 in (contacts) ) {
changeItVariable(_it47479558)
printHtmlPart(63)
expressionOut.print(it.contactID)
printHtmlPart(64)
expressionOut.print(it.firstName)
printHtmlPart(14)
expressionOut.print(it.lastName)
printHtmlPart(65)
createClosureForHtmlPart(66, 4)
invokeTag('link','g',463,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("sendTxt"),'params':([contactID: it.contactID]),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(67)
createClosureForHtmlPart(68, 4)
invokeTag('link','g',472,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("editContact"),'params':([contactID: it.contactID]),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(69)
createClosureForHtmlPart(70, 4)
invokeTag('link','g',476,['style':("margin-bottom:0px; margin-top: 15px; "),'action':("details"),'params':([contactID: it.contactID, conType: 'Contact']),'type':("button"),'class':("btn btn-app")],4)
printHtmlPart(71)
}
printHtmlPart(72)
}
printHtmlPart(73)
invokeTag('javascript','g',492,['src':("dashboard/plugins/jQuery/jQuery-2.1.4.min.js")],-1)
printHtmlPart(74)
invokeTag('javascript','g',495,['src':("dashboard/bootstrap/js/bootstrap.min.js")],-1)
printHtmlPart(75)
invokeTag('javascript','g',498,['src':("dashboard/app.min.js")],-1)
printHtmlPart(76)
})
invokeTag('captureBody','sitemesh',506,['class':("hold-transition skin-purple sidebar-mini")],1)
printHtmlPart(77)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1457404331880L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
