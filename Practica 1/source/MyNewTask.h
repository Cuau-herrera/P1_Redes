/*
 * MyNewTask.h
 *
 *  Created on: 7 sep. 2026
 *      Author: pymr_
 */

#ifndef MYNEWTASK_H_
#define MYNEWTASK_H_

/* Framework */
#include "TimersManager.h"
#include "FunctionLib.h"
#include "LED.h"

/* KSDK */
#include "fsl_common.h"
#include "EmbeddedTypes.h"
#include "fsl_os_abstraction.h"

/* Definición de Eventos de la Tarea */
#define gMyNewTaskEvent1_c (1 << 0)
#define gMyNewTaskEvent2_c (1 << 1)
#define gMyNewTaskEvent3_c (1 << 2)

/* Configuración de Prioridad y Tamaño de Stack */
#define gMyTaskPriority_c  3
#define gMyTaskStackSize_c 400

/* Prototipos de funciones públicas */
void MyTaskTimer_Start(void);
void MyTaskTimer_Stop(void);
void MyTask_Init(void);

/*
 * Obtiene el valor actual del contador.
 */
uint8_t MyTask_GetCounter(void);

/*
 * Reinicia el contador a cero.
 */
void MyTask_ResetCounter(void);

/*
 * Muestra el valor indicado mediante el LED RGB.
 */
void MyTask_ShowCounter(uint8_t counter);

#endif /* MYNEWTASK_H_ */
