from django.conf.urls import url
from django.urls import path
from django.contrib.auth import logout

from stock_bureau.views import *

urlpatterns = [
    # Dashboard
    path('', index, name="home"),
    # Measure
    path('measure/', measure_index, name="measure-index"),
    path('measure/create/', measure_create, name="measure-create"),
    path('measure/<int:id>/edit/', measure_update, name="measure-edit"),
    path('measure/<int:id>/delete/', measure_delete, name="measure-delete"),

    # Service
    path('service/', service_index, name="service-index"),
    path('service/create/', service_create, name="service-create"),
    path('service/<int:id>/edit/', service_update, name="service-edit"),
    path('service/<int:id>/delete/', service_delete, name="service-delete"),

    # Employee
    path('employe/', employee_index, name="employee-index"),
    path('employe/create/', employee_create, name="employee-create"),
    path('employe/<int:id>/edit/', employee_update, name="employee-edit"),
    path('employe/<int:id>/delete/', employee_delete, name="employee-delete"),

    # Fournisseur
    path('fournisseur/', fournisseur_index, name="fournisseur-index"),
    path('fournisseur/create/', fournisseur_create, name="fournisseur-create"),
    path('fournisseur/<int:id>/edit/', fournisseur_update, name="fournisseur-edit"),
    path('fournisseur/<int:id>/delete/', fournisseur_delete, name="fournisseur-delete"),

    # Category
    path('category/', category_index, name="category-index"),
    path('category/create/', category_create, name="category-create"),
    path('category/<int:id>/edit/', category_update, name="category-edit"),
    path('category/<int:id>/delete/', category_delete, name="category-delete"),

    # Product
    path('product/', product_index, name="product-index"),
    path('product/create/', product_create, name="product-create"),
    path('product/<int:id>/edit/', product_update, name="product-edit"),
    path('product/<int:id>/delete/', product_delete, name="product-delete"),

    # LineOrdered
    path('lineordered/', lineorder_index, name="lineordered-index"),
    path('lineordered/create/', lineorder_create, name="lineordered-create"),
    path('lineordered/<int:id>/edit/', lineorder_update, name="lineordered-edit"),
    path('lineordered/<int:id>/delete/', lineorder_delete, name="lineordered-delete"),

    # LineDelivery
    path('linedelivery/', linedelivery_index, name="linedelivery-index"),
    path('linedelivery/create/', linedelivery_create, name="linedelivery-create"),
    path('linedelivery/<int:id>/edit/', linedelivery_update, name="linedelivery-edit"),
    path('linedelivery/<int:id>/delete/', linedelivery_delete, name="linedelivery-delete"),
    path('ajax/load_four/', load_product, name='ajax_load_four'),

    # LineOutput
    path('lineoutput/', lineoutput_index, name="lineoutput-index"),
    path('lineoutput/create/', lineoutput_create, name="lineoutput-create"),
    path('lineoutput/<int:id>/edit/', lineoutput_update, name="lineoutput-edit"),
    path('lineoutput/<int:id>/delete/', lineoutput_delete, name="lineoutput-delete"),
    path('ajax/load_four_out/', load_product_output, name='ajax_load_pdt'),
    path('ajax/load_pdt_qt/', load_qte_product, name='ajax_load_qt_pdt'),

    # Inventory
    path('inventory/', inventory_index, name="inventory-index"),
    path('inventory/create/', inventory_create, name="inventory-create"),
    path('inventory/<int:id>/edit/', inventory_update, name="inventory-edit"),
    path('inventory/<int:id>/delete/', inventory_delete, name="inventory-delete"),
]
