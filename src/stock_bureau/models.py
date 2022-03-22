from django.db import models
from django.template.defaultfilters import lower, upper
from django.urls import reverse
from django.utils.text import slugify


class Service(models.Model):
    name = models.CharField(max_length=45, unique=True)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):

        if self.name:
            self.name = upper(self.name)

        super().save(*args, **kwargs)


class Employees(models.Model):
    name = models.CharField(max_length=30, unique=True)
    lastname = models.CharField(max_length=45, unique=True)
    service = models.ForeignKey(Service, on_delete=models.SET_NULL, null=True)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.name} {self.lastname}"

    def save(self, *args, **kwargs):

        if self.name:
            self.name = upper(self.name)

        if self.lastname:
            self.lastname = self.lastname.title()

        super().save(*args, **kwargs)


class Measure(models.Model):
    name = models.CharField(max_length=40, unique=True)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse("measure-index")

    @property
    def measure_available(self):
        if self.deleted:
            return "NON DISPO"
        return "DISPONIBLE"

    def save(self, *args, **kwargs):

        if self.name:
            self.name = upper(self.name)

        super().save(*args, **kwargs)


class Category(models.Model):
    name = models.CharField(max_length=36, unique=True)
    description = models.CharField(max_length=255)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):

        if self.name:
            self.name = upper(self.name)

        super().save(*args, **kwargs)


class Provider(models.Model):
    name = models.CharField(max_length=50, unique=True)
    description = models.CharField(max_length=255)
    tel = models.CharField(max_length=30)
    address = models.CharField(max_length=50)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):

        if self.name:
            self.name = upper(self.name)

        super().save(*args, **kwargs)


class Product(models.Model):
    code = models.CharField(max_length=80, unique=True)
    name = models.CharField(max_length=80, unique=True)
    threshold = models.IntegerField()
    category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.name)

    @property
    def product_available(self):
        if self.deleted:
            return "NON DISPO"
        return "DISPONIBLE"

    def save(self, *args, **kwargs):

        if not self.code:
            self.code = upper(self.name[:3]+str(self.threshold))

        if self.name:
            self.name = upper(self.name)

        super().save(*args, **kwargs)


class Ordered(models.Model):
    reference_ordered = models.CharField(max_length=50, unique=True)
    date_ordered = models.DateField()
    employee = models.ForeignKey(Employees, on_delete=models.SET_NULL, null=True)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.reference_ordered

    def save(self, *args, **kwargs):

        if self.reference_ordered:
            self.reference_ordered = upper(self.reference_ordered)

        super().save(*args, **kwargs)


class LineOrdered(models.Model):
    ordered = models.ForeignKey(Ordered, on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    measure = models.ForeignKey(Measure, on_delete=models.SET_NULL, null=True)
    quantity_ordered = models.IntegerField()
    observation_ordered = models.CharField(max_length=50)
    livery = models.BooleanField(default=False)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.ordered)

    @property
    def ordered_string(self):
        if self.livery:
            return "LIVREE"
        return "NON LIVREE"


class Delivery(models.Model):
    reference_delivery = models.CharField(max_length=55, unique=True)
    date_delivery = models.DateField()
    provider = models.ForeignKey(Provider, on_delete=models.SET_NULL, null=True)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.reference_delivery

    def save(self, *args, **kwargs):

        if self.reference_delivery:
            self.reference_delivery = upper(self.reference_delivery)

        super().save(*args, **kwargs)


class LineDelivery(models.Model):
    delivery = models.ForeignKey(Delivery, on_delete=models.SET_NULL, null=True)
    line_ordered = models.ForeignKey(LineOrdered, on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    measure = models.ForeignKey(Measure, on_delete=models.SET_NULL, null=True)
    quantity_delivery = models.IntegerField()
    price_delivery = models.IntegerField()
    observation_delivery = models.CharField(max_length=50)
    used = models.BooleanField(default=False)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.delivery)

    @property
    def used_string(self):
        if self.used:
            return "EPUISEE"
        return "EN UTILISATION"


class Output(models.Model):
    reference_output = models.CharField(max_length=60, unique=True)
    date_output = models.DateField()
    user = models.ForeignKey(Employees, on_delete=models.SET_NULL, null=True)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.reference_output

    def save(self, *args, **kwargs):

        if self.reference_output:
            self.reference_output = upper(self.reference_output)

        super().save(*args, **kwargs)


class LineOutput(models.Model):
    output = models.ForeignKey(Output, on_delete=models.SET_NULL, null=True)
    line_delivery = models.ForeignKey(LineDelivery, on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    measure = models.ForeignKey(Measure, on_delete=models.SET_NULL, null=True)
    quantity_output = models.IntegerField()
    observation_output = models.CharField(max_length=50)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.output)


class Inventory(models.Model):
    reference_inventory = models.CharField(max_length=50, unique=True)
    date_inventory = models.DateField()
    quantity_inventory = models.IntegerField()
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    measure = models.ForeignKey(Measure, on_delete=models.SET_NULL, null=True)
    type = models.BooleanField(default=False)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.reference_inventory

    @property
    def used_string_type(self):
        if self.type:
            return "ADDITION"
        return "SOUSTRACTION"

    def save(self, *args, **kwargs):

        if self.reference_inventory:
            self.reference_inventory = upper(self.reference_inventory)

        super().save(*args, **kwargs)


class StockMovement(models.Model):
    date_movement = models.DateField()
    line_delivery = models.ForeignKey(LineDelivery, on_delete=models.SET_NULL, null=True)
    inventory = models.ForeignKey(Inventory, on_delete=models.SET_NULL, null=True)
    line_output = models.ForeignKey(LineOutput, on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    measure = models.ForeignKey(Measure, on_delete=models.SET_NULL, null=True)
    quantity = models.IntegerField()
    type = models.BooleanField(default=False)
    deleted = models.BooleanField(default=False)
    date_modified = models.DateTimeField(auto_now=True)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.date_movement)

