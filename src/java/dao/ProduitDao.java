/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import Db.dbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Produit;
/**
 *
 * @author user
 */
public class ProduitDao {
    Connection connect;
    
    public ProduitDao(){
        connect = dbConnection.getConnection();
    }
    
    public void ajouterProduit (Produit produit){
        try {
            PreparedStatement prstmt = connect.prepareStatement("INSERT INTO Produit (nom_article, quantite, prix, description)"
                    + " VALUES (?, ?, ?, ?)");
            prstmt.setString(1, produit.getNom_article());
            prstmt.setInt(2,produit.getQuantite());
            prstmt.setDouble(3, produit.getPrix());
            prstmt.setString(4, produit.getDescription());
            
            prstmt.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ProduitDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Produit> afficherProduits(){
        List<Produit> produits = new ArrayList<>();
        try{
            PreparedStatement prstmt = connect.prepareStatement("SELECT * from Produit");
            ResultSet res = prstmt.executeQuery();
            
            while(res.next()){
                Produit produit = new Produit();
                
                produit.setId_produit(res.getInt("id_produit"));
                produit.setNom_article(res.getString("nom_article"));
                produit.setQuantite(res.getInt("quantite"));
                produit.setPrix(res.getFloat("prix"));
                produit.setDescription(res.getString("description"));
                
                produits.add(produit);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        return produits;
    }
}
