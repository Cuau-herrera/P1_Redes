/*
 * MyNewTask.c
 *
 *  Created on: 7 sep. 2026
 *      Author: pymr_
 */

#include "MyNewTask.h"

/* Declaraciones previas (Forward declarations) requeridas por la macro OSA */
void My_Task(osaTaskParam_t argument);
static void myCounterTimerCallback(void *param);

osaEventId_t mMyEvents;

/* Variable global para almacenar el TimerID */
tmrTimerID_t myTimerID = gTmrInvalidTimerID_c;

/* ID del manejador para la tarea */
osaTaskId_t gMyTaskHandler_ID;

/* Variable local para almacenar el estado actual de los LEDs */
static uint8_t ledsState = 0;

/* Contador utilizado por la aplicación */
static uint8_t myCounterValue = 0;

/* Definición de la Tarea OSA (Ahora reconoce 'My_Task') */
OSA_TASK_DEFINE(My_Task, gMyTaskPriority_c, 1, gMyTaskStackSize_c, FALSE);

/*
 * Función para mostrar el valor del contador mediante el LED RGB.
 *
 * 0 -> Verde
 * 1 -> Rojo
 * 2 -> Azul
 * 3 -> Magenta
 */
static void MyTask_DisplayCounter(uint8_t counter)
{
    switch (counter)
    {
        case 0:
            LED_SetRgbLed(LED_RGB, 0, 255, 0);
            break;

        case 1:
            LED_SetRgbLed(LED_RGB, 255, 0, 0);
            break;

        case 2:
            LED_SetRgbLed(LED_RGB, 0, 0, 255);
            break;

        case 3:
            LED_SetRgbLed(LED_RGB, 255, 0, 255);
            break;

        default:
            LED_SetRgbLed(LED_RGB, 0, 0, 0);
            break;
    }
}

/*
 * Tarea principal personalizada
 */
void My_Task(osaTaskParam_t argument)
{
    osaEventFlags_t customEvent;

    myTimerID = TMR_AllocateTimer();

    while (1)
    {
        OSA_EventWait(mMyEvents,
                      osaEventFlagsAll_c,
                      FALSE,
                      osaWaitForever_c,
                      &customEvent);

        if (!gUseRtos_c && !customEvent)
        {
            break;
        }

        /* Procesamiento según el evento recibido */
        switch (customEvent)
        {
            case gMyNewTaskEvent1_c:

                /*
                 * Inicia el temporizador periódico de 4 segundos.
                 * Cada vez que expire se genera el evento 2.
                 */
                TMR_StartIntervalTimer(
                    myTimerID,
                    4000,
                    myCounterTimerCallback,
                    NULL
                );

                /*
                 * El contador comienza en cero cuando se inicia
                 * nuevamente el temporizador.
                 */
                myCounterValue = 0;

                /* Mostrar el valor inicial del contador */
                MyTask_DisplayCounter(myCounterValue);

                ledsState = 1;

                break;

            case gMyNewTaskEvent2_c:

                /*
                 * Evento enviado por myCounterTimerCallback.
                 *
                 * El contador avanza:
                 * 0 -> 1 -> 2 -> 3 -> 0
                 */
                myCounterValue++;

                if (myCounterValue > 3)
                {
                    myCounterValue = 0;
                }

                /* Mostrar el nuevo valor mediante el LED RGB */
                MyTask_DisplayCounter(myCounterValue);

                ledsState = 1;

                break;

            case gMyNewTaskEvent3_c:

                /*
                 * Evento para detener el temporizador.
                 */
                ledsState = 0;

                TurnOffLeds();

                TMR_StopTimer(myTimerID);

                break;

            default:

                break;
        }
    }
}

/*
 * Función para inicializar la tarea y sus eventos
 */
void MyTask_Init(void)
{
    mMyEvents = OSA_EventCreate(TRUE);

    gMyTaskHandler_ID = OSA_TaskCreate(OSA_TASK(My_Task), NULL);

    /*
     * El contador comienza en cero.
     */
    myCounterValue = 0;

    /*
     * Mostrar inicialmente el estado correspondiente al contador 0.
     */
    MyTask_DisplayCounter(myCounterValue);
}

/*
 * Callback llamado por el temporizador cada vez que expira.
 *
 * El temporizador trabaja con un periodo de 4 segundos.
 * El callback solamente genera el evento para que la tarea
 * realice el procesamiento del contador.
 */
static void myCounterTimerCallback(void *param)
{
    OSA_EventSet(mMyEvents, gMyNewTaskEvent2_c);
}

/*
 * Función pública para detener el temporizador
 */
void MyTaskTimer_Stop(void)
{
    OSA_EventSet(mMyEvents, gMyNewTaskEvent3_c);
}

/*
 * Función pública para iniciar el temporizador
 */
void MyTaskTimer_Start(void)
{
    OSA_EventSet(mMyEvents, gMyNewTaskEvent1_c);
}

/*
 * Función pública para obtener el valor actual del contador.
 */
uint8_t MyTask_GetCounter(void)
{
    return myCounterValue;
}

/*
 * Función pública para reiniciar el contador.
 *
 * El contador vuelve a cero y se actualiza el LED RGB.
 */
void MyTask_ResetCounter(void)
{
    myCounterValue = 0;

    MyTask_DisplayCounter(myCounterValue);
}

/*
 * Función pública para mostrar directamente un valor del contador.
 *
 * Esta función permite que otro módulo actualice el LED RGB
 * utilizando el valor recibido o calculado por la aplicación.
 */
void MyTask_ShowCounter(uint8_t counter)
{
    if (counter > 3)
    {
        counter = 0;
    }

    myCounterValue = counter;

    MyTask_DisplayCounter(myCounterValue);
}
