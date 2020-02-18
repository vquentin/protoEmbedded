// I2C parameters
#define SLAVE_I2C_ADDRESS 9 // check what the other addresses used are to avoid conflict
//i2c messages values
enum i2c_messages_t {I2C_SPEED, I2C_ALARM, I2C_ODO, I2C_TRIP, I2C_BATTERY_CHARGE, I2C_BATTERY_KM};
uint8_t speedR = 0; // speed in km/h
unsigned long odoR = 0; // odometer in km
uint16_t tripR = 0; // trip odometer in hm
uint8_t batteryChargeR = 0; // battery charge in % from 0 to 100
uint8_t batteryKmR = 0; // number of km remaining with current battery charge
// alarm state machine declarations (shared between master and slave)
enum alarm_states_t {ALARM_INACTIVE, ALARM_ACTIVE, ALARM_WATCH};
//end of i2c shared values and types
