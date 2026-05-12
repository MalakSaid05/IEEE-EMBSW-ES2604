#ifdef STD_TYPES 
#endif

#ifndef STD_TYPES
#define STD_TYPES


// typedef unsigned int u32itn_t;
// typedef unsigned long int u32int_t;

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned long uint32_t;
typedef unsigned long long int u64int64_t;


typedef signed  sint8_t;
typedef signed short sint16_t;
typedef signed int sint32_t;
typedef signed long long int sint64_t;


typedef float float32_t;
typedef double float64_t;





typedef volatile uint8_t v_uint8_t;
typedef volatile uint16_t v_uint16_t;
typedef volatile uint32_t v_uint32_t;
typedef volatile u64int64_t v_u64int64_t;


typedef volatile sint8_t v_sint8_t;
typedef volatile sint16_t v_sint16_t;
typedef volatile sint32_t v_sint32_t;
typedef volatile sint64_t v_sint64_t;


typedef volatile float32_t v_float32_t;
typedef volatile float64_t v_float64_t;


#endif