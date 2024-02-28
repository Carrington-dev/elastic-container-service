from django.http import JsonResponse


def home(request):
    context = dict()
    context['message'] = "Its working"
    return JsonResponse(context)