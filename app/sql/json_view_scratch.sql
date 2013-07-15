SELECT * 


FROM `Providers` 
JOIN ProviderPractices ON ProviderPractices.Provider_id = Providers.id
JOIN Practices ON ProviderPractices.Practice_id = Practices.id
JOIN ProviderStates ON Providers.ProviderState_id = ProviderStates.id
JOIN Genders ON Gender_id = Genders.id
JOIN Addresss AS Birth_Addresss ON Birth_Address_id = Birth_Addresss.id
JOIN Addresss AS Home_Addresss ON Home_Address_id = Home_Addresss.id
JOIN Addresss AS Corr_Addresss ON Corr_Address_id = Corr_Addresss.id
JOIN Addresss AS Provider_Addresss ON Address_id = Provider_Addresss.id
JOIN Phones AS Corr_Phones ON Corr_Phone_id = Corr_Phones.id
JOIN Phones AS Corr_Fax_Phones ON Corr_Fax_Phone_id = Corr_Fax_Phones.id
JOIN Phones AS Provider_Phones ON Phone_id = Provider_Phones.id
JOIN Phones AS Provider_Fax_Phones ON Fax_Phone_id = Provider_Fax_Phones.id
JOIN CredentialOrganizations ON CredentialOrganization_id  = CredentialOrganizations.id
LEFT JOIN Providers AS Non_Providers_0 ON NonPhysician_0_Provider_id = Non_Providers_0.id
LEFT JOIN Providers AS Non_Providers_1 ON NonPhysician_1_Provider_id = Non_Providers_1.id
LEFT JOIN Providers AS Non_Providers_2 ON NonPhysician_2_Provider_id = Non_Providers_2.id
LEFT JOIN Providers AS Non_Providers_3 ON NonPhysician_3_Provider_id = Non_Providers_3.id
LEFT JOIN Providers AS Non_Providers_4 ON NonPhysician_4_Provider_id = Non_Providers_4.id
LEFT JOIN Providers AS Non_Providers_5 ON NonPhysician_5_Provider_id = Non_Providers_5.id
LEFT JOIN Languages AS Provider_0_Languages ON Provider_0_Language_id = Provider_0_Languages.id
LEFT JOIN Languages AS Provider_1_Languages ON Provider_1_Language_id = Provider_1_Languages.id
LEFT JOIN Languages AS Provider_2_Languages ON Provider_2_Language_id = Provider_2_Languages.id
LEFT JOIN Languages AS Staff_0_Languages ON Staff_0_Language_id = Staff_0_Languages.id
LEFT JOIN Languages AS Staff_1_Languages ON Staff_1_Language_id = Staff_1_Languages.id
LEFT JOIN Languages AS Staff_2_Languages ON Staff_2_Language_id = Staff_2_Languages.id
