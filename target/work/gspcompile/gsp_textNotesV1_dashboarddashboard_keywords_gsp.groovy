import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_dashboarddashboard_keywords_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/dashboard_keywords.gsp" }
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
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywords'))
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
if(true && (type == 'contestSelect')) {
printHtmlPart(34)
}
else {
printHtmlPart(35)
}
printHtmlPart(36)
if(true && (keywordCount == 0)) {
printHtmlPart(37)
}
printHtmlPart(38)
expressionOut.print(searchQueryHidden)
printHtmlPart(39)
expressionOut.print(offset)
printHtmlPart(40)
expressionOut.print(keywordCount)
printHtmlPart(41)
if(true && (keywordCount > 0 || offset > 0)) {
printHtmlPart(42)
if(true && (keywords != 'NONE')) {
printHtmlPart(43)
for( _it114499348 in (keywords) ) {
changeItVariable(_it114499348)
printHtmlPart(44)
if(true && (type == 'All')) {
printHtmlPart(45)
expressionOut.print(createLink(controller: 'Dashboard', action: 'details', params: [conType: 'keyword',  promotionID:it.promotionID]))
printHtmlPart(46)
}
printHtmlPart(47)
if(true && (type == 'contestSelect')) {
printHtmlPart(45)
expressionOut.print(createLink(controller: 'Dashboard', action: 'contestSelect', params: [promotionID:it.promotionID]))
printHtmlPart(48)
}
printHtmlPart(49)
expressionOut.print(it.keyword)
printHtmlPart(50)
if(true && (it.campaignType == 'con')) {
printHtmlPart(51)
}
else if(true && (it.campaignType == 'cust')) {
printHtmlPart(52)
}
else if(true && (it.campaignType == 'coup')) {
printHtmlPart(53)
}
else {
printHtmlPart(54)
}
printHtmlPart(55)
invokeTag('formatDate','g',337,['format':("MM-dd-yyyy"),'date':(it.dateEff)],-1)
printHtmlPart(56)
if(true && (it.endless)) {
printHtmlPart(57)
}
else {
printHtmlPart(58)
invokeTag('formatDate','g',344,['format':("MM-dd-yyyy"),'date':(it.dateExp)],-1)
printHtmlPart(59)
}
printHtmlPart(60)
if(true && (it.description)) {
printHtmlPart(61)
expressionOut.print(it.description)
printHtmlPart(62)
}
else {
printHtmlPart(63)
}
printHtmlPart(64)
expressionOut.print(it.replys)
printHtmlPart(65)
if(true && (it.suspened)) {
printHtmlPart(66)
}
else {
printHtmlPart(67)
}
printHtmlPart(68)
}
printHtmlPart(69)
}
else {
printHtmlPart(70)
}
printHtmlPart(71)
}
else {
printHtmlPart(72)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newKeyWord'))
printHtmlPart(73)
}
printHtmlPart(74)
if(true && (offset > 0)) {
printHtmlPart(75)
createClosureForHtmlPart(76, 3)
invokeTag('link','g',409,['action':("keywords"),'params':([offset: offset, up: 'false', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],3)
printHtmlPart(77)
}
else {
printHtmlPart(78)
}
printHtmlPart(79)
if(true && (offset <= keywordCount)) {
printHtmlPart(80)
createClosureForHtmlPart(81, 3)
invokeTag('link','g',416,['action':("keywords"),'params':([offset: offset, up: 'true', searchQueryHidden: searchQueryHidden]),'type':("button"),'class':("btn btn-default")],3)
printHtmlPart(82)
}
else {
printHtmlPart(83)
}
printHtmlPart(84)
expressionOut.print(currentPage)
printHtmlPart(85)
invokeTag('javascript','g',516,['src':("dashboard/plugins/jQuery/jQuery-2.1.4.min.js")],-1)
printHtmlPart(86)
invokeTag('javascript','g',519,['src':("dashboard/bootstrap/js/bootstrap.min.js")],-1)
printHtmlPart(87)
invokeTag('javascript','g',522,['src':("dashboard/app.min.js")],-1)
printHtmlPart(88)
})
invokeTag('captureBody','sitemesh',530,['class':("hold-transition skin-purple sidebar-mini")],1)
printHtmlPart(89)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1471049047676L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
