from django import forms
import datetime
from django.forms import ModelChoiceField, HiddenInput
from stock_bureau.models import *


class MeasureForm(forms.ModelForm):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = Measure
        fields = ['name', ]


class ServiceForm(forms.ModelForm):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = Service
        fields = ['name', ]


class EmployeeForm(forms.ModelForm):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    lastname = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    service = forms.ModelChoiceField(queryset=Service.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))

    class Meta:
        model = Employees
        fields = ['name', 'lastname', 'service', ]


class ProviderForm(forms.ModelForm):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    description = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    tel = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    address = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = Provider
        fields = ['name', 'description', 'tel', 'address', ]


class CategoryForm(forms.ModelForm):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    description = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = Category
        fields = ['name', 'description', ]


class ProductForm(forms.ModelForm):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    threshold = forms.IntegerField(widget=forms.TextInput(attrs={'class':'form-control'}))
    category = forms.ModelChoiceField(queryset=Category.objects.filter(deleted=False),
                                    widget=forms.Select(attrs={'class': 'form-select'}))

    class Meta:
        model = Product
        fields = ['name', 'threshold', 'category', ]


class LineOrderedForm1(forms.ModelForm):
    ordered = forms.ModelChoiceField(queryset=Ordered.objects.all(), widget=forms.Select(attrs={'class': 'form-select'}))
    product = forms.ModelChoiceField(queryset=Product.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    measure = forms.ModelChoiceField(queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    quantity_ordered = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    observation_ordered = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = LineOrdered
        fields = ['ordered', 'product', 'measure', 'quantity_ordered', 'observation_ordered']


class MenuModelChoiceFieldemploye(ModelChoiceField):
    def label_from_instance(self, obj):
        return "%s %s" % (obj.name, obj.lastname)


class LineOrderedForm(forms.ModelForm):
    date_ordered = forms.DateField(initial=datetime.date.today, widget=forms.DateInput(format='%Y-%m-%d', attrs={'type': 'date', 'class': 'form-control'}))
    employee = MenuModelChoiceFieldemploye(queryset=Employees.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'style': 'width:250px;height:40px;font-size:15px'}))
    product = forms.ModelChoiceField(required=False, queryset=Product.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'id': 'id_product', 'name': 'id_product'}))
    measure = forms.ModelChoiceField(required=False, queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'id': 'id_measure', 'name': 'id_measure'}))
    quantity_ordered = forms.IntegerField(required=False, widget=forms.TextInput(attrs={'class': 'form-control'}))
    observation_ordered = forms.CharField(required=False, widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = LineOrdered
        fields = ['date_ordered', 'employee', 'product', 'measure', 'quantity_ordered', 'observation_ordered', ]


class MenuModelChoiceFieldProduct(ModelChoiceField):
    def label_from_instance(self, obj):
        return "%s" % (obj.product.name)


class MenuModelChoiceFieldProductOut(ModelChoiceField):
    def label_from_instance(self, obj):
        return "%s - %s" % (obj.delivery, obj.product.name)


class LineDeliveryForm(forms.ModelForm):
    date_delivery = forms.DateField(initial=datetime.date.today, widget=forms.DateInput(format='%Y-%m-%d', attrs={'type': 'date', 'class': 'form-control'}))
    provider = forms.ModelChoiceField(queryset=Provider.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'style': 'width:250px;height:40px;font-size:15px'}))
    line_ordered = MenuModelChoiceFieldProduct(required=False, queryset=LineOrdered.objects.filter(deleted=False, livery=False), widget=forms.Select(attrs={'class': 'form-select', 'id': 'id_lineorder', 'name': 'id_lineorder'}))
    measure = forms.ModelChoiceField(required=False, queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'id': 'id_measure', 'name': 'id_measure'}))
    quantity_delivery = forms.IntegerField(required=False, widget=forms.TextInput(attrs={'class': 'form-control'}))
    price_delivery = forms.CharField(required=False, widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = LineDelivery
        fields = ['date_delivery', 'provider', 'line_ordered', 'product', 'measure', 'quantity_delivery', 'price_delivery', ]


class LineDeliveryForm1(forms.ModelForm):
    delivery = forms.ModelChoiceField(queryset=Delivery.objects.all(), widget=forms.Select(attrs={'class': 'form-select', 'visibility': 'hidden'}))
    product = forms.ModelChoiceField(queryset=Product.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    measure = forms.ModelChoiceField(queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    quantity_delivery = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    price_delivery = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = LineDelivery
        fields = ['delivery', 'product', 'measure', 'quantity_delivery', 'price_delivery', ]

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['delivery'].widget = forms.HiddenInput()
        self.fields['product'].widget = forms.HiddenInput()
        self.fields['measure'].widget = forms.HiddenInput()


class LineOutputForm(forms.ModelForm):
    date_output = forms.DateField(initial=datetime.date.today, widget=forms.DateInput(format='%Y-%m-%d', attrs={'type': 'date', 'class': 'form-control'}))
    user = forms.ModelChoiceField(queryset=Employees.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'style': 'width:250px;height:40px;font-size:15px'}))
    line_delivery = MenuModelChoiceFieldProductOut(required=False, queryset=LineDelivery.objects.filter(deleted=False, used=False), widget=forms.Select(attrs={'class': 'form-select', 'id': 'id_linedeliver', 'name': 'id_linedeliver'}))
    measure = forms.ModelChoiceField(required=False, queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select', 'id': 'id_measure', 'name': 'id_measure'}))
    quantity_output = forms.IntegerField(required=False, widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = LineOutput
        fields = ['date_output', 'user', 'line_delivery', 'product', 'measure', 'quantity_output', ]


class LineOutputForm1(forms.ModelForm):
    output = forms.ModelChoiceField(queryset=Output.objects.all(), widget=forms.Select(attrs={'class': 'form-select', 'visibility': 'hidden'}))
    product = forms.ModelChoiceField(queryset=Product.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    measure = forms.ModelChoiceField(queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    quantity_output = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))

    class Meta:
        model = LineOutput
        fields = ['output', 'product', 'measure', 'quantity_output', ]

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['output'].widget = forms.HiddenInput()
        self.fields['product'].widget = forms.HiddenInput()
        self.fields['measure'].widget = forms.HiddenInput()


class InventoryForm(forms.ModelForm):
    INVENTORY_CHOICES = (
        ("False", "Soustraire"),
        ("True", "Ajouter"),

    )
    date_inventory = forms.DateField(initial=datetime.date.today, widget=forms.DateInput(format='%Y-%m-%d', attrs={'type': 'date', 'class': 'form-control'}))
    reference_inventory = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    quantity_inventory = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    product = forms.ModelChoiceField(queryset=Product.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    measure = forms.ModelChoiceField(queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    type = forms.ChoiceField(choices=INVENTORY_CHOICES, widget=forms.Select(attrs={'class': 'form-select'}))

    class Meta:
        model = Inventory
        fields = ['reference_inventory', 'date_inventory', 'product', 'measure', 'quantity_inventory', 'type', ]


class InventoryForm1(forms.ModelForm):
    INVENTORY_CHOICES = (
        ("False", "Soustraire"),
        ("True", "Ajouter"),

    )
    date_inventory = forms.DateField(initial=datetime.date.today, widget=forms.DateInput(format='%Y-%m-%d', attrs={'type': 'date', 'class': 'form-control'}))
    quantity_inventory = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    product = forms.ModelChoiceField(queryset=Product.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    measure = forms.ModelChoiceField(queryset=Measure.objects.filter(deleted=False), widget=forms.Select(attrs={'class': 'form-select'}))
    type = forms.ChoiceField(choices=INVENTORY_CHOICES, widget=forms.Select(attrs={'class': 'form-select'}))

    class Meta:
        model = Inventory
        fields = ['date_inventory', 'product', 'measure', 'quantity_inventory', 'type', ]

