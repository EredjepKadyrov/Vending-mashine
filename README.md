# Vending-mashine
##  - State Machine
A state machine is a behavior model. It consists of a finite number of states and is therefore also called finite-state
machine (FSM). Based on the current state and a given input the machine performs state transitions and produces
outputs.

##  - Process Description
The following peripherals was used in the top entity:


| First Header  | Second Header | Second Header                 |
| ------------- | ------------- | ----------------------------- |
| CLOCK 50      | in            | std logic                     |
| SW            | in            | std logic vector(9 downto 0)  |
| KEY           | in            | std logic vector(3 downto 0)  |
| LEDR          | out           | std logic vector(9 downto 0)  |
| HEX0          | out           | std logic vector(0 to 6)      |
| HEX1          | out           | std logic vector(0 to 6)      |
| HEX2          | out           | std logic vector(0 to 6)      |
| HEX3          | out           | std logic vector(0 to 6)      |
| HEX4          | out           | std logic vector(0 to 6)      |
| HEX5          | out           | std logic vector(0 to 6)      |



##  - Entities Description
#### • Was used entity of a generic counter ```e_modulo_counter``` 
with an asynchronous low active reset and roll-over output bit.It has been used to produce delay of 3 seconds and 6 seconds required for counter. Also, in this
3 entity we implemented the feature of generic entities.
#### • Was used a new entity ```e_ram32x4``` 
as a component in the main entity. We are using this to store information about total money inserted in the machine. Input and output data of the memory is 4-bit wide vector.
#### • Entity ```e_hex7seg``` 
has been used to display the counting numbers of coffees ordered on ```HEX0, HEX1```.
#### • Library of parametrized module ```e_lpm_count``` 
has been used to count the number of coffees delivered by the vending machine. It also possible to count each products of vending machine.
#### • Was added ```e_add_two_numbers``` 
entity to perform mathematical operations to add money inserted (slv moneyin) and data from the memory output(slv data out).
#### • Entity ```e_fsmdisplay``` 
has been used to display selected menu on ``` HEX2, HEX3, HEX4, HEX5```.



##  - RTL View
In digital circuit design, register-transfer level (RTL) is a design abstraction which models a synchronous digital
circuit in terms of the flow of digital signals (data) between hardware registers, and the logical operations performed
on those signals.Representation of RTL view allows us to see the representation of the code in the graphical form,
connection between internal and external signal and shows all correctly connected or not connected components


##  - TimeQuest Analyzer
TimeQuest Analyzer Report Time configuration parameters was created and saved as a file:e my coffee maker FSM.sdc.
All steps were indicated in a screenshots below. In our case we have Maximum of negative slack is -3,182 ns. Worst
case propagation delay could be found with a formula clock period - slack: 1 ns - (-3,182) = 4,182 ns.
From this we could find maximum frequency: Fmax = 1 / 4,182= 239,12 MHz .
