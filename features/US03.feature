Feature: US03 Visualización de horarios de asesores
    Como criador de cuyes 
    quiero ver los horarios disponibles de los asesores 
    para seleccionar un horario que se ajuste a mi agenda.

Scenario: Visualizar horarios disponibles
Given el <criador> desea visualizar los horarios disponibles de un asesor elegido.
And se encuentra viendo la <información del perfil> de un asesor.
When haga clic en el botón “Reservar Cita”
Then el sistema le mostrará una interfaz con los <horarios> disponibles del asesor

Examples:
| criador | información del asesor | horarios |
| Blurry | información del asesor1 | 10/04/2024 10:00, 10/04/2024 11:00, 10/04/2024 12:00|


Scenario: Fallar al intentar visualizar horarios.
Given el <criador> desea visualizar los horarios disponibles del asesor elegido.
And se encuentra viendo la <información del perfil> de un asesor.
When haga clic en el botón “Reservar Cita”
And el asesor no tenga horarios disponibles
Then el sistema le mostrará un <mensaje de error> “El asesor no tiene horarios disponibles”.

Examples:
| criador | información del asesor | mensaje de error |
| Blurry | información del asesor2 | “El asesor no tiene horarios disponibles” |