from django.shortcuts import render
import textindex

# Create your views here.

def index(request):
    return render(request, 'poc/index.html')

def phrase(request):
	query = request.GET.get('query')
	index = textindex.Index()
	output = index.print_lookup(query)
	context = {'results': output, 'query': query}
	return render(request, 'poc/phrase.html', context)


def locale(request):
	query = request.GET.get('query')
	index = textindex.Index()
	output = index.print_lookup_locale(query)
	context = {'results': output, 'query': query}
	return render(request, 'poc/locale.html', context)

def process(request):
	textindex.main('/Users/bchevez/Desktop/Otis_Test_Data/batch/png/','en')
	return render(request, 'poc/process.html')

def process_intl(request):
	textindex.main('/Users/bchevez/Desktop/Otis_Test_Data/batch/intl_png/','jp')
	return render(request, 'poc/process.html')

def getall(request):

	index = textindex.Index()
	output = index.print_lookup_all()
	context = {'results': output[0], 'data': output[1]}
	return render(request, 'poc/all.html', context)