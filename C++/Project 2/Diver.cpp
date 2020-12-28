/*****************************************
** File:    Diver.cpp
** Project: CMSC 202 Project 2, Spring 2020
** Author:  Jared Soltas
** Date:    03/7/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the second major class (Diver) in this
** program. It keeps track of the materials the diver currently
** has an when to increment/decrement them. It is also used to
** find certain materials and their indices.
**
***********************************************/

#include "Material.h"
#include "Diver.h"

// Default constructor for Diver
Diver::Diver()
{
    // Initializes the number of materials as 0
    m_numMaterials = 0;
}

// Overloaded constructor for Diver
// Given the string name
Diver::Diver(string name)
{
    // Sets the diver's name for overloaded function
    SetName(name);
}

// Getter for diver's name
// Given nothing and returns the diver's name
string Diver::GetName()
{
    // Returns the diver's name
    return m_myName;
}

// Setter for diver's name
// Given the string name and returns nothing
void Diver::SetName(string name)
{
    // Sets the private variable m_myName to the argument name
    m_myName = name;
}

// Displays all the materials in m_myMaterials array and their quantities
// Given nothing and returns nothing
void Diver::DisplayMaterials()
{
    for(int i = 0; i < PROJ2_SIZE; i++)
    {
        // Prints out the entirety of the materials and their current quantities
        cout << i + 1 << ". " << m_myMaterials[i].m_name << " " << m_myMaterials[i].m_quantity;
        cout << endl;
    }
}

// Checks the m_myMaterials array to see if the desired material has a quantity > 0
// Given a material, returns the index or -1
int Diver::CheckMaterial(Material material)
{
    // Loops through the entire m_myMaterials array
    for(int i = 0; i < PROJ2_SIZE; i++)
    {
        if(m_myMaterials[i].m_name == material.m_name)
        {
            // If an index is found where the name is equal to the arugment
            // and quantity is at least 1 it returns the index
            if(m_myMaterials[i].m_quantity > 0)
                return i;
        }
    }

    // Returns -1 if no proper index is found
    return -1;

}

// Adds all the loaded in materials from m_materials into the diver's known materials
// Given every material, returns nothing
void Diver::AddMaterial(Material material)
{
    // Sets the name, type, and depth of my_myMaterials
    // equal to the imported m_materials array
    m_myMaterials[m_numMaterials].m_name = material.m_name;
    m_myMaterials[m_numMaterials].m_type = material.m_type;
    m_myMaterials[m_numMaterials].m_depth = material.m_depth;
    m_myMaterials[m_numMaterials].m_quantity = 0;
    // Increments the number which material we're at
    m_numMaterials += 1;
}

// Increases the quantity of the desired material by 1
// Given the material, return nothing
void Diver::IncrementQuantity(Material material)
{
    for(int i = 0; i < PROJ2_SIZE; i++)
    {
        // If m_myMaterials finds an index where the name
        // is the same at the argument then it adds 1
        if(m_myMaterials[i].m_name == material.m_name)
        {
            m_myMaterials[i].m_quantity += 1;
        }
    }
}

// Checks if a material can be decremented or not
// Given a desired material, return true or false
bool Diver::DecrementQuantity(Material material)
{
    // Gets the index of the material argument
   int materialIndex = CheckMaterial(material);

   if(materialIndex != -1)
   {
      // Returns true if the index of the m_myMaterials is > 0
      m_myMaterials[materialIndex].m_quantity -= 1;
      return true;
   }

   // Returns false is the material quantity is 0
   return false;
}

// Checks if a material is the same and can be decremented twice
// Given an index, returns true or false
bool Diver::DecrementTwoQuantities(int materialIndex)
{
   // True or false if the number of materials is > 1
   bool hasEnoughMaterial = HasDuplicateMaterial(materialIndex);
   if(hasEnoughMaterial)
   {
       // If true the material quantity is subtracted by 2, return true
      m_myMaterials[materialIndex].m_quantity -= 2;
      return true;
   }

   return false;
}

// Checks if the combining materials have enough in their quantity from m_myMaterials
// Given 2 materials, returns true or false
bool Diver::CheckQuantity(Material material1, Material material2)
{
    int indexMaterial1 = CheckMaterial(material1);
    int indexMaterial2 = CheckMaterial(material2);

    // If either m_myMaterials index quantity is 0
    if(indexMaterial1 == -1 || indexMaterial2 == -1)
        return false;

    // If the combining materials are different
    if(material1.m_name != material2.m_name)
    {
        if(indexMaterial1 != -1 && indexMaterial2 != -1)
        {
            // Gets a true or false if the materials have at least 1 in quantity
            bool hasMaterial1 = DecrementQuantity(material1);
            bool hasMaterial2 = DecrementQuantity(material2);
            return (hasMaterial1 && hasMaterial2);
        }
    }

    // If the combining materials are the same and their quantity is > 1 return true/false
    if(material1.m_name == material2.m_name)
    {
        bool hasMaterial = DecrementTwoQuantities(indexMaterial1);
        return hasMaterial;
    }

    // Gets mad when I don't have an ending return
    return false;
}

// Will find the material at a given index
// Given index, return material
Material Diver::GetMaterial(int index)
{
    // Returns the material to use in another function
    return m_myMaterials[index];
}

// Checks if two of the same material have a quantity of at least 2
// Given index, returns true or false
bool Diver::HasDuplicateMaterial(int index)
{
    // If the combining materials are the same they must
    // have a quantity of 2 or more to combine, return true or false
    if(m_myMaterials[index].m_quantity > 1)
        return true;
    return false;
}

// Calculates the total amount of depth gained from unique items created
// Given nothing, returns int of the summed depth
int Diver::CalcDepth()
{
    int depthSum = 0;
    // Loops through the entire m_myMaterials array
    for(int i = 0; i < PROJ2_SIZE; i++)
    {
        // If the index's type is unique and has a quantity of at least 1 its depth it summed
        if(m_myMaterials[i].m_type == "unique" && m_myMaterials[i].m_quantity > 0)
            depthSum += m_myMaterials[i].m_depth;
    }

    // Returns the summed depth to the Game class
    return depthSum;
}
