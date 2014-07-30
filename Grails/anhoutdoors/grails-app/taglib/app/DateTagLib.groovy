package app

class DateTagLib {
	def currentYear = {
		out << Calendar.getInstance().get(Calendar.YEAR)
	}
	
	def copyright = {attrs, body ->
		out << "<div id='footer'>"
		out << "&copy; ${attrs['startYear']} - ${currentYear()}, ${body()}&nbsp;"
		out << "</div>"
	}
}
