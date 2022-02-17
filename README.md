
# Introduction 

The purpose of this project is to help a business or company to manage a large amount of information and stay as organized as possible by facilitating the accessibility of its basic information and by collecting and integrating logically related data that rely on obtaining specific elements. Thus, based on my knowledge gained from the database course, I think that the creation of a management system for hospitals would be very necessary for humanity. To summarize, I chose to prepare a management system for the American Hospital in Tirana.

# What is the hospital management system and its importance?

Establishing this management system for the American Hospital in Tirana would be very necessary because it would address different directions of the hospital's workflow. The system will manage the smooth performance of healthcare along with medical, administrative and financial control. This hospital system will simplify the work of health care professionals as well as their interaction with patients. 
The system is built of six main tables as:
 
1)	Patient Table
2)	Doctor Table 
3)	Staff Table 
4)	Visits Table
5)	Patient Diagnosis Table
6)	Bill Table
 



# Tables Structure

The tables are constructed to be interconnected with each other. The patient table contains the patient information it is composed of seven columns as:

![image](https://user-images.githubusercontent.com/86987951/154479092-1077196e-f21b-4a38-9de5-98f77e308ac2.png)


The doctor's table contains the doctor's information, it also consists of seven columns as: 

![image](https://user-images.githubusercontent.com/86987951/154479165-fa856d31-3d8e-462d-b6a7-5fd670237fb8.png)

The staff table contains staff data, it consists of three columns as:

![image](https://user-images.githubusercontent.com/86987951/154479237-7558c18f-b5b9-48c1-88e6-26c5fa6a28cd.png)

The VISITS table contains the relevant information for the patient's visit, it consists of five columns as:

![image](https://user-images.githubusercontent.com/86987951/154479324-8d69e486-565a-46e4-8b7b-e7f5e9f70a63.png)

The patient's diagnosis table contains the relevant data for determining the patient's disease, it is composed of five columns as: 

![image](https://user-images.githubusercontent.com/86987951/154479390-ca757431-0a68-4f5b-8c1e-420be795faf9.png)

The bill table contains the relevant information for the patient bill, it is composed of three
columns such as:

![image](https://user-images.githubusercontent.com/86987951/154479448-83c7a09e-5c5c-4abd-81ce-2f117ee589b6.png)


# Relationship Between Tables

*	The PATIENT table with the STAFF table has a one-to-one relationship because the staff table takes only the value of DOCTOR_CODE from the patient table.


*	The DOCTOR table with the PATIENT table also has a one-to-one relationship because it only takes the value of PATIENT_DOCTOR_CODE from the patient table.


*	The PATIENT table with the PATIENT_DIAGNOSIS table also has a one-to-one relationship. PATIENT_DIAGNOSIS table takes only PATIENT_ID from patient table.


*	The same for the VISITS table. It has a one-to-one relationship with the PATIENT table because it only takes the value of PATIENT_ID. Also, the visit table has a one-to-one relationship with the DOCTOR table because it takes the value of DOCTOR_CODE.


*	The DOCTOR table with the STAFF table has a one-to-one relationship because the staff table takes only the DOCTOR_CODE value. 


*	The PATIENT table also has a one-to-one relationship with the BILL table because the invoice table only takes the PATIENT_ID value.

# Hospital Management Schema Diagram

![image](https://user-images.githubusercontent.com/86987951/154478893-43995a31-de2c-4fbe-a862-ce37a4b719ad.png)




