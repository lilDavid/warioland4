#ifndef TYPES_H
#define TYPES_H


typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned long u32;
typedef signed long s32;
typedef unsigned long long u64;
typedef signed long long s64;
typedef volatile unsigned char vu8;
typedef volatile signed char vs8;
typedef volatile unsigned short vu16;
typedef volatile signed short vs16;
typedef volatile unsigned long vu32;
typedef volatile signed long vs32;
typedef volatile unsigned long long vu64;
typedef volatile signed long long vs64;

#define S8_MIN (-128)
#define S8_MAX (127)
#define U8_MAX (255)

#define S16_MIN (-32768)
#define S16_MAX (32767)
#define U16_MAX (65535)

#define S32_MIN (-2147483648)
#define S32_MAX (2147483647)
#define U32_MAX ((u32)4294967295)


#define NULL ((void*) 0)


typedef void (*ProcedureFunc)(void);

#endif /* TYPES_H */
