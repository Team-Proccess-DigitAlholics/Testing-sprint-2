Feature: Envío de diagnóstico y recomendaciones 

    Como fisioterapeuta, 
    deseo enviar un diagnóstico con el resultado de la consulta y las recomendaciones 
    para que el paciente pueda visualizarlo.

Criterio de aceptación #1
    Scenario: Fisioterapista envía los resultados de la consulta
    Given que el usuario se encuentra en la sección "Pacientes"
    And selecciona a un <paciente> de la lista
    When selecciona la opción "Enviar Diagnóstico"
    Then el sistema presenta el formulario para la redacción de un diagnóstico.


Examples: 
    |             paciente                |           
    |  "Pedro Fernandez", "Physiotherapy" |  

Criterio de aceptación #2
    Scenario: Fisioterapista completa con éxito formulario de diagnóstico
    Given que el usuario se encuentra en el formulario de redacción de un diagnóstico.
    And coloca la <fecha>
    And redacta el <diagnostico>
    When hace clic en "Enviar"
    Then el sistema envía el diagnostico al paciente.

Examples: 
    |        fecha         |              diagnostico             |        
    | "Friday 3 , January" |  "Back pain and shortness of breath" |

    Criterio de aceptación #3
    Scenario: Fisioterapista no completa con éxito formulario de diagnóstico
    Given que el usuario se encuentra en el formulario de redacción de un diagnóstico.
    And coloca la <fecha>
    And no redacta el <diagnostico>
    When hace clic en "Enviar"
    Then el sistema no guarda el diagnóstico
    And muestra un mensaje <Message>

Examples: 
    |        Message         |        
    | "Diagnóstico no enviado. Por favor, complete el campo de diagnóstico"|