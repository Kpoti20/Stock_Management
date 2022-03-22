from datetime import date

from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Sum
from django.http import Http404, JsonResponse
from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse, reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from .models import *
from .forms import *


def index(request):
    return render(request, "index.html")


#Index - measure
def measure_index(request):
    try:
        measure = Measure.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'measure/list.html', context={'measure': measure})


#Create - measure
def measure_create(request):
    try:
        form = MeasureForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('measure-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'measure/add.html', {'form': form})


#Update - measure
def measure_update(request, id):
    try:
        measure = get_object_or_404(Measure, id=id)
        form = MeasureForm(request.POST or None, instance=measure)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('measure-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'measure/update.html', {'form': form})


#Delete - measure
def measure_delete(request, id):
    try:
        measure = get_object_or_404(Measure, id=id)

        if request.method == 'POST':
            measure.deleted = True
            measure.save()
            messages.success(request, "Suppression effectué")
            return redirect('measure-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'measure/delete.html', {'measure': measure})


#Index - service
def service_index(request):
    try:
        service = Service.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/list.html', context={'service': service})


#Create - service
def service_create(request):
    try:
        form = ServiceForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('service-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/add.html', {'form': form})


#Update - service
def service_update(request, id):
    try:
        service = get_object_or_404(Service, id=id)
        form = ServiceForm(request.POST or None, instance=service)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('service-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/update.html', {'form': form})


#Delete - service
def service_delete(request, id):
    try:
        service = get_object_or_404(Service, id=id)

        if request.method == 'POST':
            service.deleted = True
            service.save()
            messages.success(request, "Suppression effectuée")
            return redirect('service-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/delete.html', {'service': service})


#Index - employe
def employee_index(request):
    try:
        employee = Employees.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/list.html', context={'employe': employee})


#Create - employe
def employee_create(request):
    try:
        form = EmployeeForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('employee-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/add.html', {'form': form})


#Update - employee
def employee_update(request, id):
    try:
        employee = get_object_or_404(Employees, id=id)
        form = EmployeeForm(request.POST or None, instance=employee)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('employee-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/update.html', {'form': form})


#Delete - employee
def employee_delete(request, id):
    try:
        employee = get_object_or_404(Employees, id=id)

        if request.method == 'POST':
            employee.deleted = True
            employee.save()
            messages.success(request, "Suppression effectuée")
            return redirect('employee-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/delete.html', {'employe': employee})


#Index - fournisseur
def category_index(request):
    try:
        fournisseur = Provider.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/list.html', context={'fournisseur': fournisseur})


#Create - fournisseur
def fournisseur_create(request):
    try:
        form = ProviderForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('fournisseur-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/add.html', {'form': form})


#Update - category
def fourisseur_update(request, id):
    try:
        category = get_object_or_404(Category, id=id)
        form = CategoryForm(request.POST or None, instance=category)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('category-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'category/update.html', {'form': form})


#Delete - fournisseur
def fournisseur_delete(request, id):
    try:
        category = get_object_or_404(Category, id=id)

        if request.method == 'POST':
            category.deleted = True
            category.save()
            messages.success(request, "Suppression effectuée")
            return redirect('category-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/delete.html', {'category': category})


#Index - service
def service_index(request):
    try:
        service = Service.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/list.html', context={'service': service})


#Create - service
def service_create(request):
    try:
        form = ServiceForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('service-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/add.html', {'form': form})


#Update - service
def service_update(request, id):
    try:
        service = get_object_or_404(Service, id=id)
        form = ServiceForm(request.POST or None, instance=service)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('service-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/update.html', {'form': form})


#Delete - service
def service_delete(request, id):
    try:
        service = get_object_or_404(Service, id=id)

        if request.method == 'POST':
            service.deleted = True
            service.save()
            messages.success(request, "Suppression effectuée")
            return redirect('service-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'service/delete.html', {'service': service})


#Index - employe
def employee_index(request):
    try:
        employee = Employees.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/list.html', context={'employe': employee})


#Create - employe
def employee_create(request):
    try:
        form = EmployeeForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('employee-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/add.html', {'form': form})


#Update - employee
def employee_update(request, id):
    try:
        employee = get_object_or_404(Employees, id=id)
        form = EmployeeForm(request.POST or None, instance=employee)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('employee-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/update.html', {'form': form})


#Delete - employee
def employee_delete(request, id):
    try:
        employee = get_object_or_404(Employees, id=id)

        if request.method == 'POST':
            employee.deleted = True
            employee.save()
            messages.success(request, "Suppression effectuée")
            return redirect('employee-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'employe/delete.html', {'employe': employee})


#Index - category
def category_index(request):
    try:
        category = Category.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'categorie/list.html', context={'category': category})


#Create - category
def category_create(request):
    try:
        form = CategoryForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('category-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'categorie/add.html', {'form': form})


#Update - category
def category_update(request, id):
    try:
        category = get_object_or_404(Category, id=id)
        form = CategoryForm(request.POST or None, instance=category)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('category-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'category/update.html', {'form': form})


#Delete - category
def category_delete(request, id):
    try:
        category = get_object_or_404(Provider, id=id)

        if request.method == 'POST':
            category.deleted = True
            category.save()
            messages.success(request, "Suppression effectuée")
            return redirect('category-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'categorie/delete.html', {'category': category})


#Index - product
def product_index(request):
    try:
        product = Product.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'produit/list.html', context={'product': product})


#Create - product
def product_create(request):
    try:
        form = ProductForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('product-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'produit/add.html', {'form': form})


#Update - product
def product_update(request, id):
    try:
        product = get_object_or_404(Product, id=id)
        form = ProductForm(request.POST or None, instance=product)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('product-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'produit/update.html', {'form': form})


#Delete - product
def product_delete(request, id):
    try:
        product = get_object_or_404(Product, id=id)

        if request.method == 'POST':
            product.deleted = True
            product.save()
            messages.success(request, "Suppression effectuée")
            return redirect('product-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'produit/delete.html', {'product': product})


#Index - fournisseur
def fournisseur_index(request):
    try:
        fournisseur = Provider.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/list.html', context={'fournisseur': fournisseur})


#Create - fournisseur
def fournisseur_create(request):
    try:
        form = ProviderForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, "Enregistrement effectué")
            return redirect('fournisseur-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/add.html', {'form': form})


#Update - fournisseur
def fournisseur_update(request, id):
    try:
        fournisseur = get_object_or_404(Provider, id=id)
        form = CategoryForm(request.POST or None, instance=fournisseur)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('fournisseur-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/update.html', {'form': form})


#Delete - fournisseur
def fournisseur_delete(request, id):
    try:
        fournisseur = get_object_or_404(Provider, id=id)

        if request.method == 'POST':
            fournisseur.deleted = True
            fournisseur.save()
            messages.success(request, "Suppression effectuée")
            return redirect('fournisseur-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'fournisseur/delete.html', {'fournisseur': fournisseur})


#Index - commande
def lineorder_index(request):
    try:
        false = 'False'
        query = """
                   select stock_bureau_lineordered.id,stock_bureau_ordered.date_ordered,stock_bureau_ordered.reference_ordered, count(stock_bureau_lineordered.product_id) as nbfour, 
                   sum(stock_bureau_lineordered.quantity_ordered) as qte_total,stock_bureau_lineordered.deleted
                   from stock_bureau_lineordered,stock_bureau_ordered,stock_bureau_product,stock_bureau_measure
                   where stock_bureau_lineordered.product_id=stock_bureau_product.id
                   and stock_bureau_lineordered.ordered_id=stock_bureau_ordered.id
                   and stock_bureau_lineordered.measure_id=stock_bureau_measure.id
                   and stock_bureau_lineordered.deleted=%s
                   group by stock_bureau_lineordered.id,stock_bureau_ordered.date_ordered,stock_bureau_ordered.reference_ordered
                   order by stock_bureau_ordered.reference_ordered desc
                """

        line_ordered = LineOrdered.objects.raw(query, [false])

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'commande/list.html', context={'line_ordered': line_ordered})


#Create - commande
def lineorder_create(request):
    try:
        form = LineOrderedForm(request.POST or None)
        d = date.today().strftime("%d%m%Y")

        if request.method == 'POST':
            id_max = Ordered.objects.all().count()
            reference_ordered = "CMD" + str(id_max) + str(d)
            date_ordered = request.POST['date_ordered']
            employee = request.POST['employee']
            products = request.POST.getlist('product_ids[]')
            meas = request.POST.getlist('measure_ids[]')
            qte_ordered = request.POST.getlist('qte_ordered[]')
            observation_ordered = request.POST.getlist('obs_ordered[]')

            if (products):
                ordered = Ordered.objects.create(reference_ordered=reference_ordered, date_ordered=date_ordered, employee=Employees.objects.get(pk=employee))
                ordered_id = ordered.id
                for i in range(len(products)):
                    LineOrdered.objects.create(ordered=Ordered.objects.get(pk=ordered_id),
                                               product=Product.objects.get(pk=products[i]), measure=Measure.objects.get(pk=meas[i]),
                                               quantity_ordered=qte_ordered[i], observation_ordered=observation_ordered[i])

                messages.success(request, "Enregistrement(s) effectué(s)")
                return redirect('lineordered-index')
            else:
                messages.warning(request, "Svp, Veuillez enregistrer au moins une ligne commande de fourniture.")
                return render(request, 'commande/add.html', {'form': form, })

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'commande/add.html', {'form': form})


#Update - lineorder
def lineorder_update(request, id):
    try:
        line_ordered = get_object_or_404(LineOrdered, id=id)
        form = LineOrderedForm1(request.POST or None, instance=line_ordered)

        if form.is_valid():
            form.save()
            messages.success(request, "Modification effectuée")
            return redirect('lineordered-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'commande/update.html', {'form': form})


#Delete - commande
def lineorder_delete(request, id):
    try:
        line_ordered = get_object_or_404(LineOrdered, id=id)

        if request.method == 'POST':
            line_ordered.deleted = True
            line_ordered.save()
            messages.success(request, "Suppression effectuée")
            return redirect('lineordered-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'commande/delete.html', {'line_ordered': line_ordered})


#Index - linedelivery
def linedelivery_index(request):
    try:
        false = 'False'
        query = """
                select stock_bureau_linedelivery.id,stock_bureau_product.name,
                stock_bureau_linedelivery.quantity_delivery,stock_bureau_linedelivery.price_delivery,
                stock_bureau_delivery.reference_delivery,stock_bureau_delivery.date_delivery,stock_bureau_measure.name
				from stock_bureau_linedelivery,stock_bureau_product,stock_bureau_delivery,stock_bureau_measure
                where stock_bureau_linedelivery.product_id=stock_bureau_product.id
                and stock_bureau_linedelivery.delivery_id=stock_bureau_delivery.id
				and stock_bureau_linedelivery.measure_id=stock_bureau_measure.id
                and stock_bureau_linedelivery.deleted=%s
                """

        line_delivery = LineDelivery.objects.raw(query, [false])

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'livraison/list.html', context={'line_delivery': line_delivery})


#Create - linedelivery
def linedelivery_create(request):
    try:
        form = LineDeliveryForm(request.POST or None)
        dt = date.today().strftime("%d%m%Y")

        if request.method == 'POST':
            id_max = Delivery.objects.all().count()
            reference_delivery = "ENT" + str(id_max) + str(dt)
            date_delivery = request.POST['date_delivery']
            provider = request.POST['provider']
            line_ordered = request.POST.getlist('cmdIds[]')
            products = request.POST.getlist('ProductIds[]')
            meas = request.POST.getlist('mesIds[]')
            qte = request.POST.getlist('qtefour[]')
            price = request.POST.getlist('prices[]')

            if (products and provider and date_delivery):
                delivery = Delivery.objects.create(reference_delivery=reference_delivery, date_delivery=date_delivery, provider=Provider.objects.get(pk=provider))
                delivery_id = delivery.id
                for i in range(len(products)):
                    line_delivery = LineDelivery.objects.create(delivery=Delivery.objects.get(pk=delivery_id), line_ordered=LineOrdered.objects.get(pk=line_ordered[i]),
                                               product=Product.objects.get(pk=products[i]), measure=Measure.objects.get(pk=meas[i]),
                                               quantity_delivery=qte[i], price_delivery=price[i])
                    linedelivery_id = line_delivery.id

                    StockMovement.objects.create(date_movement=date_delivery, line_delivery=LineDelivery.objects.get(pk=linedelivery_id),
                                             product=Product.objects.get(pk=products[i]), quantity=qte[i], measure=Measure.objects.get(pk=meas[i]),
                                             type=True)

                    LineOrdered.objects.filter(id=line_ordered[i]).update(livery=True)

                messages.success(request, "Enregistrement(s) effectué(s)")
                return redirect('linedelivery-index')
            else:
                messages.warning(request, "Svp, Veuillez remplir tous les champs.")
                return render(request, 'livraison/add.html', {'form': form, })

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'livraison/add.html', {'form': form, })


#Update - linedelivery
def linedelivery_update(request, id):
    try:
        line_delivery = get_object_or_404(LineDelivery, id=id)
        mouv = get_object_or_404(StockMovement, line_delivery_id=line_delivery)
        form = LineDeliveryForm1(request.POST or None, instance=line_delivery)

        # verification si la livraison est déja utilisé (présent dans la table sortie)
        line_delivery_used = list(LineOutput.objects.filter(line_delivery_id=id, deleted=False).aggregate(Sum('line_delivery')).values())[0] or 0

        if form.is_valid():
            if (line_delivery_used == 0):
                post_f = form.save(commit=False)
                # Mise a jour automatique des donnees de la table mouvement
                details = get_object_or_404(Delivery, reference_delivery=post_f.delivery)
                date_delivery = details.date_delivery
                mouv.date_movement = date_delivery
                mouv.product = post_f.product
                mouv.quantity = post_f.quantity_delivery
                # Fin de la Mise a jour automatique des donnees de la table mouvement
                post_f.save()
                mouv.save()
                messages.success(request, "Modification effectuée")
                return redirect('linedelivery-index')
            else:
                messages.success(request, "Modification impossible, la livraison est en utilisation ")
                return render(request, 'livraison/update.html', {'form': form, 'line_delivery': line_delivery, })
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'livraison/update.html', {'form': form, 'line_delivery': line_delivery, })


#Chargement automatique de l'id de la fourniture sur la page entree(appro)
def load_product(request):
    com_id = request.GET.get('ligne_commande')
    fournit_id = get_object_or_404(LineOrdered, id=com_id)
    fId = fournit_id.product.id
    return JsonResponse(fId, safe=False)


#Delete - linedelivery
def linedelivery_delete(request, id):
    try:
        line_delivery = get_object_or_404(LineDelivery, id=id)
        mouv = get_object_or_404(StockMovement, line_delivery_id=line_delivery)

        # verification si la livraison est déja utilisé(présent dans la table sortie)
        line_delivery_used = list(LineOutput.objects.filter(line_delivery_id=id, deleted=False).aggregate(Sum('line_delivery')).values())[0] or 0

        if request.method == 'POST':
            if line_delivery_used == 0:
                l_ordered_id = line_delivery.line_ordered_id
                LineOrdered.objects.filter(id=l_ordered_id).update(livery=False)
                mouv.deleted = True
                line_delivery.deleted = True
                line_delivery.save()
                mouv.save()
                messages.success(request, "Suppression effectuée")
                return redirect('linedelivery-index')
            else:
                messages.success(request, "Suppression impossible, la livraison est en utilisation.")
                return redirect('livraison/delete.html')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'livraison/delete.html', {'line_delivery': line_delivery})


#Index - lineoutput
def lineoutput_index(request):
    try:
        false = 'False'
        query = """
                select stock_bureau_lineoutput.id,stock_bureau_product.name,stock_bureau_lineoutput.quantity_output,stock_bureau_measure.name,
                stock_bureau_output.reference_output,stock_bureau_output.date_output,concat(stock_bureau_employees.name,' ',stock_bureau_employees.lastname) as np
                from stock_bureau_lineoutput,stock_bureau_product,stock_bureau_output,stock_bureau_measure,stock_bureau_employees
                where stock_bureau_lineoutput.product_id=stock_bureau_product.id
                and stock_bureau_lineoutput.output_id=stock_bureau_output.id
                and stock_bureau_lineoutput.measure_id=stock_bureau_measure.id
                and stock_bureau_output.user_id=stock_bureau_employees.id
                and stock_bureau_lineoutput.deleted=%s
                """

        line_output = LineOutput.objects.raw(query, [false])

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'sortie/list.html', context={'line_output': line_output})


#Create - lineoutput
def lineoutput_create(request):
    try:
        form = LineOutputForm(request.POST or None)
        dte = date.today().strftime("%d%m%Y")

        if request.method == 'POST':
            id_max = Output.objects.all().count()
            reference_output = "SOR" + str(id_max) + str(dte)
            date_output = request.POST['date_output']
            user = request.POST['user']
            line_delivery = request.POST.getlist('livIds[]')
            products = request.POST.getlist('ProductIds[]')
            meas = request.POST.getlist('mesIds[]')
            qte = request.POST.getlist('qtefour[]')

            if (user and date_output):
                if(products and meas):
                    output = Output.objects.create(reference_output=reference_output, date_output=date_output, user=Employees.objects.get(pk=user))
                    output_id = output.id
                    for i in range(len(products)):
                        line_output = LineOutput.objects.create(output=Output.objects.get(pk=output_id), line_delivery=LineDelivery.objects.get(pk=line_delivery[i]),
                                                   product=Product.objects.get(pk=products[i]), measure=Measure.objects.get(pk=meas[i]), quantity_output=qte[i])
                        lineoutput_id = line_output.id

                        StockMovement.objects.create(date_movement=date_output, line_output=LineOutput.objects.get(pk=lineoutput_id),
                                                 product=Product.objects.get(pk=products[i]), quantity=qte[i], measure=Measure.objects.get(pk=meas[i]),
                                                 type=False)

                        qte_dis_e = list(LineDelivery.objects.filter(id=line_delivery[i], measure_id=Measure.objects.get(pk=meas[i]), deleted=False, used=False).aggregate(Sum('quantity_delivery')).values())[0] or 0
                        qte_dis_s = list(LineOutput.objects.filter(line_delivery_id=line_delivery[i], measure_id=Measure.objects.get(pk=meas[i]), deleted=False).aggregate(Sum('quantity_output')).values())[0] or 0

                        if (qte_dis_e == qte_dis_s):
                            LineDelivery.objects.filter(id=line_delivery[i]).update(used=True)

                        messages.success(request, "Enregistrement(s) effectué(s)")
                        return redirect('lineoutput-index')
                else:
                    messages.warning(request, "Svp, Veuillez renseigner au moins une ligne de sortie.")
                    return render(request, 'sortie/add.html', {'form': form, })
            else:
                messages.warning(request, "Svp, Veuillez remplir tous les champs.")
                return render(request, 'sortie/add.html', {'form': form, })

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'sortie/add.html', {'form': form, })


#Update - lineoutput
def lineoutput_update(request, id):
    try:
        line_output = get_object_or_404(LineOutput, id=id)
        mouv = get_object_or_404(StockMovement, line_output_id=line_output)
        form = LineOutputForm1(request.POST or None, instance=line_output)

        if form.is_valid():
            post_f = form.save(commit=False)
            # Mise a jour automatique des donnees de la table mouvement
            details = get_object_or_404(Output, reference_output=post_f.output)
            date_output = details.date_output
            mouv.date_movement = date_output
            mouv.product = post_f.product
            mouv.quantity = post_f.quantity_output
            # Fin de la Mise a jour automatique des donnees de la table mouvement
            post_f.save()
            mouv.save()
            messages.success(request, "Modification effectuée")
            return redirect('lineoutput-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'sortie/update.html', {'form': form, 'line_output': line_output, })


#Chargement automatique de fourniture
def load_product_output(request):
    livraison_id = request.GET.get('ligne_deliver')
    fournit_id = get_object_or_404(LineDelivery, id=livraison_id)
    fId = fournit_id.product.id
    return JsonResponse(fId, safe=False)


#Chargement automatique de la quantité de fourniture disponible
def load_qte_product(request):
    mes_id = request.GET.get('measure_id')
    deliver_get = request.GET.get('line_deliver_product')

    qte_dis0 = list(LineDelivery.objects.filter(id=deliver_get, measure_id=mes_id, deleted=False, used=False).aggregate(Sum('quantity_delivery')).values())[0] or 0
    qte_dis1 = list(LineOutput.objects.filter(line_delivery_id=deliver_get, measure_id=mes_id, deleted=False,).aggregate(Sum('quantity_output')).values())[0] or 0
    qte_dis = qte_dis0 - qte_dis1

    return JsonResponse(qte_dis, safe=False)


#Delete - lineoutput
def lineoutput_delete(request, id):
    try:
        line_output = get_object_or_404(LineOutput, id=id)
        mouv = get_object_or_404(StockMovement, line_output_id=line_output)

        if request.method == 'POST':
              l_output_id = line_output.line_delivery_id
              LineDelivery.objects.filter(id=l_output_id).update(used=False)
              mouv.deleted = True
              line_output.deleted = True
              line_output.save()
              mouv.save()
              messages.success(request, "Suppression effectuée")
              return redirect('lineoutput-index')

    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'sortie/delete.html', {'line_output': line_output})


#Index - inventory
def inventory_index(request):
    try:
        inventory = Inventory.objects.filter(deleted=False)
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'inventaire/list.html', context={'inventory': inventory})


#Create - inventory
def inventory_create(request):
    try:
        dte = date.today().strftime("%d%m%Y")
        id_max = Inventory.objects.all().count()
        form = InventoryForm(request.POST or None)

        if request.method == 'POST':
            date_inventory = request.POST['date_inventory']
            product = request.POST['product']
            measure = request.POST['measure']
            quantity_inventory = request.POST['quantity_inventory']
            type = request.POST['type']
            reference_inventory = "INV" + str(id_max) + str(dte)

            inventory = Inventory.objects.create(reference_inventory=reference_inventory,
                                                 date_inventory=date_inventory,
                                                 product=Product.objects.get(pk=product),
                                                 measure=Measure.objects.get(pk=measure),
                                                 quantity_inventory=quantity_inventory,
                                                 type=type)
            inventory_id = inventory.id

            StockMovement.objects.create(date_movement=date_inventory,
                                         inventory=Inventory.objects.get(pk=inventory_id),
                                         product=Product.objects.get(pk=product),
                                         measure=Measure.objects.get(pk=measure),
                                         quantity=quantity_inventory,
                                         type=type)

            messages.success(request, "Enregistrement effectué")
            return redirect('inventory-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'inventaire/add.html', {'form': form})


#Update - inventory
def inventory_update(request, id):
    try:
        inventory = get_object_or_404(Inventory, id=id)
        mouv = get_object_or_404(StockMovement, inventory_id=inventory)
        form = InventoryForm1(request.POST or None, instance=inventory)

        if form.is_valid():
            post_f = form.save(commit=False)
            mouv.date_movement = post_f.date_inventory
            mouv.product = post_f.product
            mouv.measure = post_f.measure
            mouv.quantity = post_f.quantity_inventory
            mouv.type = post_f.type
            post_f.save()
            mouv.save()
            messages.success(request, "Modification effectuée")
            return redirect('inventory-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'inventaire/update.html', {'form': form})


#Delete - inventory
def inventory_delete(request, id):
    try:
        inventory = get_object_or_404(Inventory, id=id)
        mouv = get_object_or_404(StockMovement, inventory_id=inventory)

        if request.method == 'POST':
            inventory.deleted = True
            mouv.deleted = True
            inventory.save()
            mouv.save()
            messages.success(request, "Suppression effectuée")
            return redirect('inventory-index')
    except ObjectDoesNotExist:
        raise Http404(":-) Une erreur s'est produite - Page introuvable")

    return render(request, 'inventaire/delete.html', {'inventory': inventory})
