from django.urls import path

from . import views

urlpatterns = [
    
    # route api de la reservations : 
    # ******************************************************************************************************************** #
    path('reservations/',views.getReservations),
    path('reservations/create/',views.createReservation),
    path('reservations/delete/<str:pk>/',views.deleteReserevation),
    path('reservations/update/<str:pk>/',views.updateReservation),
    path('reservations/<int:pk>/',views.getReservationById),
    path('reservations/doctor/<int:pk>/',views.getReservationByDoctorId),
    path('reservations/patient/<int:pk>/',views.getReservationByPatientId),


    # route api de la ordonnance : 
    # ******************************************************************************************************************** #
    path('ordonnances/',views.getOrdonnances),
    path('ordonnances/create/',views.createOrdonnance),
    path('ordonnances/delete/<str:pk>/',views.deleteOrdonnance),
    # path('ordonnances/update/<str:pk>/',views.updateOrdonnace),
    path('ordonnances/<int:pk>/',views.getOrdonnanceById),
    path('ordonnances/doctor/<int:pk>/',views.getOrdonnanceByDoctorId),
    path('ordonnances/patient/<int:pk>/',views.getOrdonnanceByPatientId),

    # route api de la radios : 
    # ******************************************************************************************************************** #

    path('radios/',views.getRadios),
    path('radios/create/',views.createRadio),
    path('radios/delete/<str:pk>/',views.deleteRadio),
    # path('radios/update/<str:pk>/',views.updateRadio),
    path('radios/<int:pk>/',views.getRadioById),
    path('radios/doctor/<int:pk>/',views.getRadiosByDoctorId),
    path('radios/patient/<int:pk>/',views.getRadiosByPatientId),
    path('radios/radiologue/<int:pk>/',views.getRadiosByRadiologueId),


    # route api de la analyses : 
    # ******************************************************************************************************************** #
    path('analyses/',views.getAnalyses),
    path('analyses/create/',views.createAnalyses),
    path('analyses/delete/<str:pk>/',views.deleteAnalyse),
    # path('analyses/update/<str:pk>/',views.updateAnalyse),
    path('analyses/<int:pk>/',views.getAnalyseById),
    path('analyses/type/<int:type>/',views.getAnalysesByType),
    path('analyses/doctor/<int:pk>/',views.getAnalysesByDoctorId),
    path('analyses/patient/<int:pk>/',views.getAnalysesByPatientId),
    path('analyses/analyste/<int:pk>/',views.getAnalysesByAnalysteId),


    # route api de consultaions : 
    # ******************************************************************************************************************** #
    path('consultations/',views.getConsultations),
    path('consultations/create/',views.createConsultation),
    # path('consultations/delete/<str:pk>/',views.deleteAnalyse),
    # path('consultations/update/<str:pk>/',views.updateAnalyse),
    path('consultations/<int:pk>/',views.getConsultaionById),
    path('consultations/doctor/<int:pk>/',views.getConsultationByDoctorId),
    path('consultations/patient/<int:pk>/',views.getConsultationByPatientId),

]