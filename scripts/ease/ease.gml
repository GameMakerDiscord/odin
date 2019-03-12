/// Easing(Easing Function, Current Time, Beginning Value, Change In Value, Duration, Ratio)
/// Created by Pixelated Pope
 
enum e_ease {
    InSine,
    OutSine,
    InOutSine,
    InQuad,
    OutQuad,
    InOutQuad,
    InCubic,
    OutCubic,
    InOutCubic,
    InQuart,
    OutQuart,
    InOutQuart,
    InQuint,
    OutQuint,
    InOutQuint,
    InExpo,
    OutExpo,
    InOutExpo,
    InCirc,
    OutCirc,
    InOutCirc,
    InBack,
    OutBack,
    InOutBack,
    InElastic,
    OutElastic,
    InOutElastic,
    InBounce,
    OutBounce,
    InOutBounce,
}
 
 
/// @param Easing Function
/// @param Current Time
/// @param Beginning Value
/// @param Change in Value
/// @param Duration
/// @param Ratio
 
__e = argument[0]; //Easing Function
__t = argument[1]; //Current Time
__b = argument[2]; //Beginning Value
__c = argument[3]; //Change in Value
__d = argument[4]; //Duration
__s = 1.70158; //Ratio
 
//Custom Ratio
if (argument_count > 5){
    __s = argument[5];
}
 
//If time is over duration
if(__t/__d >= 1) return __b + __c;
 
switch(__e)
{
    case e_ease.InSine :
    return -__c * cos(__t/__d * (pi/2)) + __c + __b;
    break;
   
    case e_ease.OutSine :
    return __c * sin(__t/__d * (pi/2)) + __b;
    break;
   
    case e_ease.InOutSine :
    return -__c/2 * (cos(pi*__t/__d)-1)+__b;
    break;
   
    case e_ease.InQuad :
    __t /= __d;
    return __c*(__t)*__t + __b;
    break;
   
    case e_ease.OutQuad :
    __t /= __d;
    return -__c * (__t)*(__t - 2) + __b;
    break;
   
    case e_ease.InOutQuad :
    __t /= __d/2;
    if(__t < 1) return __c/2*__t*__t + __b;
    return -__c/2 * ((--__t)*(__t-2) - 1) + __b;
    break;
   
    case e_ease.InCubic :
    __t /= __d;
    return __c * power(__t,3) + __b;
    break;
   
    case e_ease.OutCubic :
    __t /= __d - 1;
    return __c * (power(__t,3) + 1) + __b;
    break;
   
    case e_ease.InOutCubic :
    __t /= __d/2;
    if(__t < 1){
        return __c/2*power(__t,3) + __b;
    } else {
        __t -= 2;
        return __c / 2 * (power(__t,3) + 2) + __b;
    }
    break;
   
    case e_ease.InQuart :
    __t /= __d;
    return __c * power(__t,4) + __b;
    break;
   
    case e_ease.OutQuart :
    __t =  __t/__d-1;
    return -__c * (power(__t,4) - 1) + __b;
    break;
   
    case e_ease.InOutQuart :
    __t /= __d/2;
    if(__t < 1){
        return __c/2*power(__t,4)+__b;
    } else {
        __t -= 2;
        return -__c/2 * (power(__t,4) - 2) + __b;
    }
    break;
   
    case e_ease.InQuint :  
    __t /= __d;
    return __c * power(__t,5) + __b;   
    break;
   
    case e_ease.OutQuint :
    __t =  __t/__d-1;
    return __c * (power(__t,5) + 1) + __b; 
    break;
   
    case e_ease.InOutQuint :
    __t /= __d/2;
    if(__t < 1){
        return __c/2*power(__t,5)+__b;
    } else {
        __t -= 2;
        return __c/2 * (power(__t,5) + 2) + __b;
    }
    break;
 
    case e_ease.InExpo :
    if(__t == 0) return __b;
    else return __c * power(2, 10 * (__t/__d - 1)) + __b;
    break;
   
    case e_ease.OutExpo :
    return __c * (-power(2, -10 * __t/__d) + 1) + __b;
    break;
   
    case e_ease.InOutExpo :
    if(__t == 0) return __b;
    __t /= __d/2;
    if(__t < 1) return __c/2 * power(2, 10 * (__t -1)) + __b;
    else return __c/2 * (-power(2, -10 * --__t) + 2) + __b;
    break;
   
    case e_ease.InCirc :
    __t /= __d;
    return -__c * (sqrt(1 - __t * __t) - 1) + __b;
    break;
   
    case e_ease.OutCirc :
    __t = __t/__d-1;
    return __c * sqrt(1 - __t*__t) + __b;
    break;
   
    case e_ease.InOutCirc :
    __t /= __d/2;
    if(__t < 1) {
        return -__c/2 * (sqrt(1 - __t * __t) - 1) + __b;
    } else {
        __t -= 2;
        return __c/2 * (sqrt(1 - __t * __t) + 1) + __b;
    }
    break;
   
    case e_ease.InBack :
    __t /= __d;
    return __c * __t * __t * ((__s+1)*__t - __s) + __b;
    break;
   
    case e_ease.OutBack :
    __t = __t/__d-1;
    return __c * (__t * __t * ((__s+1)*__t + __s) + 1) + __b;
    break;
   
    case e_ease.InOutBack :
    __t /= __d / 2;
    __s*=1.525
    if(__t < 1){
        return __c/2*(__t*__t*((__s + 1)*__t-__s)) + __b;
    } else {
        __t -= 2;
        __s *= 1.525;
        return __c/2 * (__t*__t*((__s+1)*__t+__s) + 2) + __b;
    }
    break;
   
    case e_ease.InElastic :
    __s = 1.70158;
    __p = 0;
    __a = __c;
 
    if(__t == 0) return __b;
    __t /= __d;
    if(!__p) __p = __d * 0.3;
    if(__a < abs(__c))
    {
        __a = __c;
        __s = __p / 4;
    }
    else __s = __p / (2 * pi) * arcsin(__c / __a);
    return -(__a * power(2, 10 * (--__t)) * sin((__t * __d - __s) * (2 * pi) / __p)) + __b;
    break;
   
    case e_ease.OutElastic :
    __s = 1.70158;
    __p = 0;
    __a = __c;
 
    if(__t == 0) return __b;
    __t /= __d;
    if(!__p) __p = __d * 0.3;
    if(__a < abs(__c))
    {
        __a = __c;
        __s = __p / 4;
    }
    else __s = __p / (2 * pi) * arcsin(__c / __a);
    return __a * power(2, -10 * __t) * sin((__t * __d - __s) * (2 * pi) / __p) + __c + __b;
    break;
   
    case e_ease.InOutElastic :
    __s = 1.70158;
    __p = 0;
    __a = __c;
 
    if(__t == 0) return __b;
    __t /= __d/2;
    if(__t == 2) return __b + __c;
    if(!__p) __p = __d * (0.3*1.5);
    if(__a < abs(__c))
    {
        __a = __c;
        __s = __p / 4;
    }
    else __s = __p / (2 * pi) * arcsin(__c / __a);
    if(__t<1){
        return -0.5*(__a * power(2, 10 * (--__t)) * sin((__t * __d - __s) * (2 * pi) / __p)) + __b;
    } else {
        return __a * power(2, -10 * (--__t)) * sin((__t * __d - __s) * (2 * pi) / __p)*0.5 + __c + __b;
    }
    break;
   
    case e_ease.InBounce :
    __t = __d - __t;
    temp__b = __b;
    __b = 0;
    __t /= __d;
    if(__t < (1/2.75)){
        return __c - __c*(7.5625*__t*__t) + __b + temp__b;
    } else if (__t < (2/2.75)) {
        __t -= (1.5/2.75);
        return __c - __c*(7.5625*__t*__t + 0.75) + __b + temp__b;
    } else if (__t < (2.5/2.75)) {
        __t -= (2.25/2.75);
        return __c - __c*(7.5625*__t*__t + 0.9375) + __b + temp__b;
    } else {
        __t -= (2.625/2.75);
        return __c - __c*(7.5625*__t*__t + 0.984375) + __b + temp__b;
    }
    break;
   
    case e_ease.OutBounce :
    __t /= __d;
    if(__t < (1/2.75)){
        return __c*(7.5625*__t*__t) + __b;
    } else if (__t < (2/2.75)) {
        __t -= (1.5/2.75);
        return __c*(7.5625*__t*__t + 0.75) + __b;
    } else if (__t < (2.5/2.75)) {
        __t -= (2.25/2.75);
        return __c*(7.5625*__t*__t + 0.9375) + __b;
    } else {
        __t -= (2.625/2.75);
        return __c*(7.5625*__t*__t + 0.984375) + __b;
    }
    break;
   
    case e_ease.InOutBounce :
    if(__t < __d/2){
        __t *= 2;
        __t = __d - __t;
        temp__b = __b;
        __b = 0;
        __t /= __d;
        if(__t < (1/2.75)){
            return (__c - __c*(7.5625*__t*__t) + __b) * 0.5 + temp__b;
        } else if (__t < (2/2.75)) {
            __t -= (1.5/2.75);
            return (__c - __c*(7.5625*__t*__t + 0.75) + __b) * 0.5 + temp__b;
        } else if (__t < (2.5/2.75)) {
            __t -= (2.25/2.75);
            return (__c - __c*(7.5625*__t*__t + 0.9375) + __b) * 0.5 + temp__b;
        } else {
            __t -= (2.625/2.75);
            return (__c - __c*(7.5625*__t*__t + 0.984375) + __b) * 0.5 + temp__b;
        }
    } else {
        __t = __t*2-__d;
        temp__b = __b;
        __b = 0;
   
        __t /= __d;
        if(__t < (1/2.75)){
            return (__c*(7.5625*__t*__t) + __b) * 0.5 + __c * 0.5 + temp__b;
        } else if (__t < (2/2.75)) {
            __t -= (1.5/2.75);
            return (__c*(7.5625*__t*__t + 0.75) + __b) * 0.5 + __c * 0.5 + temp__b;
        } else if (__t < (2.5/2.75)) {
            __t -= (2.25/2.75);
            return (__c*(7.5625*__t*__t + 0.9375) + __b) * 0.5 + __c * 0.5 + temp__b;
        } else {
            __t -= (2.625/2.75);
            return (__c*(7.5625*__t*__t + 0.984375) + __b) * 0.5 + __c * 0.5 + temp__b;
        }
    }
    break;
}