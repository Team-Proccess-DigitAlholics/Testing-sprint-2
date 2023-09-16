Feature: Filtrar citas médicas realizadas y pendientes

    Como fisioterapeuta,
    Quiero filtrar las citas médicas
    Para saber cuáles ya he realizado y cuáles son pendientes.

Criterio de aceptación #1: 
    Scenario: Filtro de citas realizadas
    Given que soy un fisioterapeuta autenticado en la aplicación desde mi dispositivo,
    And tengo múltiples citas médicas en mi lista de pacientes,
    When selecciono la opción para filtrar las citas realizadas,
    Then veo una lista de citas que he marcado como realizadas.
    And no veo las citas que están pendientes.


Examples: 
    |    Fecha     |   Paciente    |   Estado   |
    | "2023-09-20" | "Juan Pérez"  |   "Done"   |
    | "2023-09-21" | "Ana Gómez"   |   "Done"   |
    | "2023-09-22" | "Carlos López"|   "Done"   |

Criterio de aceptación #2: 
    Scenario: Filtro de citas pendientes
    Given que soy un fisioterapeuta autenticado en la aplicación desde mi dispositivo,
    And tengo múltiples citas médicas en mi lista de pacientes,
    When selecciono la opción para filtrar las citas pendientes,
    Then veo una lista de citas que aún están pendientes.
    And no veo las citas que ya he marcado como realizadas.


Examples: 
    |    Fecha     |   Paciente     |   Estado    |
    | "2023-09-23" | "María Soto"   |  "To-Do"    |
    | "2023-09-24" | "Pedro Ramírez"|  "To-Do"    |

Criterio de aceptación #3: 
    Scenario: Ver todas las citas
    Given que soy un fisioterapeuta autenticado en la aplicación desde mi dispositivo,
    And tengo múltiples citas médicas en mi lista de pacientes,
    When selecciono la opción para ver todas las citas,
    Then veo una lista completa de todas mis citas médicas, incluyendo las realizadas y las pendientes.

    
Examples: 
    |    Fecha     |   Paciente     |   Estado   |
    | "2023-09-20" | "Juan Pérez"   |   "Done"   |
    | "2023-09-21" | "Ana Gómez"    |   "Done"   |
    | "2023-09-22" | "Carlos López" |   "Done"   |
    | "2023-09-23" | "María Soto"   |  "To-Do"   |
    | "2023-09-24" | "Pedro Ramírez"|  "To-Do"   |
