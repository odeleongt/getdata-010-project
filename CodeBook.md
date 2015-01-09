### Codebook


#### Dataset

Used the dataset provided on the course wesite as part of the project instructions:


> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
> Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
> International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


#### Human readable names

Expanded some names to ease reading:

    t --> time
    acc --> accelerometer
    std --> stdev
    gyro --> gyroscope
    mag --> magnetometer
    f --> frequency



#### Summaries performed on the data

Applied the `mean` function to every _numeric_ column on the summary dataset


#### Included variables

Complete list of variables included in the dataset, showing the class and either the unique values (for character variables) or the range (for numeric variables).


**set**:
_Class_:  character
_Unique values_:

- test

- train

**subject_id**:
_Class_:  integer
_Range_: 1 to 30

**activity**:
_Class_:  character
_Unique values_:

- LAYING

- SITTING

- STANDING

- WALKING

- WALKING_DOWNSTAIRS

- WALKING_UPSTAIRS

**time_body_accelerometer_mean_x**:
_Class_:  numeric
_Range_: 0.22159824394 to 0.3014610196

**time_body_accelerometer_mean_y**:
_Class_:  numeric
_Range_: -0.0405139534294 to -0.00130828765170213

**time_body_accelerometer_mean_z**:
_Class_:  numeric
_Range_: -0.152513899520833 to -0.07537846886

**time_body_accelerometer_stdev_x**:
_Class_:  numeric
_Range_: -0.996068635384615 to 0.626917070512821

**time_body_accelerometer_stdev_y**:
_Class_:  numeric
_Range_: -0.990240946666667 to 0.616937015333333

**time_body_accelerometer_stdev_z**:
_Class_:  numeric
_Range_: -0.987658662307692 to 0.609017879074074

**time_gravity_accelerometer_mean_x**:
_Class_:  numeric
_Range_: -0.680043155060241 to 0.974508732

**time_gravity_accelerometer_mean_y**:
_Class_:  numeric
_Range_: -0.479894842941176 to 0.956593814210526

**time_gravity_accelerometer_mean_z**:
_Class_:  numeric
_Range_: -0.49508872037037 to 0.9578730416

**time_gravity_accelerometer_stdev_x**:
_Class_:  numeric
_Range_: -0.996764227384615 to -0.829554947808219

**time_gravity_accelerometer_stdev_y**:
_Class_:  numeric
_Range_: -0.99424764884058 to -0.643578361424658

**time_gravity_accelerometer_stdev_z**:
_Class_:  numeric
_Range_: -0.990957249538462 to -0.610161166287671

**time_body_accelerometer_jerk_mean_x**:
_Class_:  numeric
_Range_: 0.0426880986186441 to 0.130193043809524

**time_body_accelerometer_jerk_mean_y**:
_Class_:  numeric
_Range_: -0.0386872111282051 to 0.056818586275

**time_body_accelerometer_jerk_mean_z**:
_Class_:  numeric
_Range_: -0.0674583919268293 to 0.0380533591627451

**time_body_accelerometer_jerk_stdev_x**:
_Class_:  numeric
_Range_: -0.994604542264151 to 0.544273037307692

**time_body_accelerometer_jerk_stdev_y**:
_Class_:  numeric
_Range_: -0.989513565652174 to 0.355306716915385

**time_body_accelerometer_jerk_stdev_z**:
_Class_:  numeric
_Range_: -0.993288313333333 to 0.0310157077775926

**time_body_gyroscope_mean_x**:
_Class_:  numeric
_Range_: -0.205775427307692 to 0.19270447595122

**time_body_gyroscope_mean_y**:
_Class_:  numeric
_Range_: -0.204205356087805 to 0.0274707556666667

**time_body_gyroscope_mean_z**:
_Class_:  numeric
_Range_: -0.0724546025804878 to 0.179102058245614

**time_body_gyroscope_stdev_x**:
_Class_:  numeric
_Range_: -0.994276591304348 to 0.267657219333333

**time_body_gyroscope_stdev_y**:
_Class_:  numeric
_Range_: -0.994210471914894 to 0.476518714444444

**time_body_gyroscope_stdev_z**:
_Class_:  numeric
_Range_: -0.985538363333333 to 0.564875818162963

**time_body_gyroscope_jerk_mean_x**:
_Class_:  numeric
_Range_: -0.157212539189362 to -0.0220916265065217

**time_body_gyroscope_jerk_mean_y**:
_Class_:  numeric
_Range_: -0.0768089915604167 to -0.0132022768074468

**time_body_gyroscope_jerk_mean_z**:
_Class_:  numeric
_Range_: -0.0924998531372549 to -0.00694066389361702

**time_body_gyroscope_jerk_stdev_x**:
_Class_:  numeric
_Range_: -0.99654254057971 to 0.179148649684615

**time_body_gyroscope_jerk_stdev_y**:
_Class_:  numeric
_Range_: -0.997081575652174 to 0.295945926186441

**time_body_gyroscope_jerk_stdev_z**:
_Class_:  numeric
_Range_: -0.995380794637681 to 0.193206498960417

**time_body_accelerometer_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.986493196666667 to 0.644604325128205

**time_body_accelerometer_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.986464542615385 to 0.428405922622222

**time_gravity_accelerometer_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.986493196666667 to 0.644604325128205

**time_gravity_accelerometer_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.986464542615385 to 0.428405922622222

**time_body_accelerometer_jerk_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.99281471515625 to 0.434490400974359

**time_body_accelerometer_jerk_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.994646916811594 to 0.450612065720513

**time_body_gyroscope_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.980740846769231 to 0.418004608615385

**time_body_gyroscope_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.981372675614035 to 0.299975979851852

**time_body_gyroscope_jerk_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.997322526811594 to 0.0875816618205128

**time_body_gyroscope_jerk_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.997666071594203 to 0.250173204117966

**frequency_body_accelerometer_mean_x**:
_Class_:  numeric
_Range_: -0.995249932641509 to 0.537012022051282

**frequency_body_accelerometer_mean_y**:
_Class_:  numeric
_Range_: -0.989034304057971 to 0.524187686888889

**frequency_body_accelerometer_mean_z**:
_Class_:  numeric
_Range_: -0.989473926666667 to 0.280735952206667

**frequency_body_accelerometer_stdev_x**:
_Class_:  numeric
_Range_: -0.996604570307692 to 0.658506543333333

**frequency_body_accelerometer_stdev_y**:
_Class_:  numeric
_Range_: -0.990680395362319 to 0.560191344

**frequency_body_accelerometer_stdev_z**:
_Class_:  numeric
_Range_: -0.987224804307692 to 0.687124163703704

**frequency_body_accelerometer_jerk_mean_x**:
_Class_:  numeric
_Range_: -0.994630797358491 to 0.474317256051282

**frequency_body_accelerometer_jerk_mean_y**:
_Class_:  numeric
_Range_: -0.989398823913043 to 0.276716853307692

**frequency_body_accelerometer_jerk_mean_z**:
_Class_:  numeric
_Range_: -0.992018447826087 to 0.157775692377778

**frequency_body_accelerometer_jerk_stdev_x**:
_Class_:  numeric
_Range_: -0.995073759245283 to 0.476803887476923

**frequency_body_accelerometer_jerk_stdev_y**:
_Class_:  numeric
_Range_: -0.990468082753623 to 0.349771285415897

**frequency_body_accelerometer_jerk_stdev_z**:
_Class_:  numeric
_Range_: -0.993107759855072 to -0.00623647528983051

**frequency_body_gyroscope_mean_x**:
_Class_:  numeric
_Range_: -0.99312260884058 to 0.474962448333333

**frequency_body_gyroscope_mean_y**:
_Class_:  numeric
_Range_: -0.994025488297872 to 0.328817010088889

**frequency_body_gyroscope_mean_z**:
_Class_:  numeric
_Range_: -0.985957788 to 0.492414379822222

**frequency_body_gyroscope_stdev_x**:
_Class_:  numeric
_Range_: -0.994652185217391 to 0.196613286661538

**frequency_body_gyroscope_stdev_y**:
_Class_:  numeric
_Range_: -0.994353086595745 to 0.646233637037037

**frequency_body_gyroscope_stdev_z**:
_Class_:  numeric
_Range_: -0.986725274871795 to 0.522454216314815

**frequency_body_accelerometer_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.986800645362319 to 0.586637550769231

**frequency_body_accelerometer_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.987648484461539 to 0.178684580868889

**frequency_body_body_accelerometer_jerk_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.993998275797101 to 0.538404846128205

**frequency_body_body_accelerometer_jerk_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.994366667681159 to 0.316346415348718

**frequency_body_body_gyroscope_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.986535242105263 to 0.203979764835897

**frequency_body_body_gyroscope_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.981468841692308 to 0.236659662496296

**frequency_body_body_gyroscope_jerk_magnetometer_mean**:
_Class_:  numeric
_Range_: -0.997617389275362 to 0.146618569064407

**frequency_body_body_gyroscope_jerk_magnetometer_stdev**:
_Class_:  numeric
_Range_: -0.99758523057971 to 0.287834616098305
