from django.shortcuts import render

# create a function
def geeks_view(request):
	
	return render(request, "index.html")
