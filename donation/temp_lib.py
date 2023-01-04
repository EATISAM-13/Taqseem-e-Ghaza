from django import template
from django.core.serializers.json import DjangoJSONEncoder
import json

register = template.Library()


@register.filter(name='split')
def split(str, key):
    return str.split(key)

@register.filter(name='index')
def index(indexable, i):
    return indexable[i]

@register.filter(name='multiply')
def multiply(a, b):
    return int(a)*int(b)

@register.filter(name='stringify')
def stringify(val):
    return json.dumps(val,sort_keys=True,indent=1,cls=DjangoJSONEncoder)