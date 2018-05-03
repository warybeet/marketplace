/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

import java.util.Date;

/**
 *
 * @author LYJni
 */
public class WishProduct {

    private int WishID;
    private int userId;
    private int productId;
    private int cataId;
    private String pName;
    private String Brand;
    private double weight;
    private String Description;
    private int stock;
    private Date date;
    private byte[] image1;
    private byte[] image2;
    private double Price;
    public WishProduct(){
    
    }

    public WishProduct(int WishID, int userId, int productId, int cataId, String pName, String Brand, double weight, String Description, int stock, Date date, byte[] image1, byte[] image2, double Price) {
        this.WishID = WishID;
        this.userId = userId;
        this.productId = productId;
        this.cataId = cataId;
        this.pName = pName;
        this.Brand = Brand;
        this.weight = weight;
        this.Description = Description;
        this.stock = stock;
        this.date = date;
        this.image1 = image1;
        this.image2 = image2;
        this.Price = Price;
    }

    public int getWishID() {
        return WishID;
    }

    public void setWishID(int cartId) {
        this.WishID = cartId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCataId() {
        return cataId;
    }

    public void setCataId(int cataId) {
        this.cataId = cataId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getBrand() {
        return Brand;
    }

    public void setBrand(String Brand) {
        this.Brand = Brand;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public byte[] getImage1() {
        return image1;
    }

    public void setImage1(byte[] image1) {
        this.image1 = image1;
    }

    public byte[] getImage2() {
        return image2;
    }

    public void setImage2(byte[] image2) {
        this.image2 = image2;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final WishProduct other = (WishProduct) obj;
        if (this.WishID != other.WishID) {
            return false;
        }
        if (this.userId != other.userId) {
            return false;
        }
        if (this.productId != other.productId) {
            return false;
        }
        if (this.cataId != other.cataId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "WishProduct{" + "cartId=" + WishID + ", userId=" + userId + ", productId=" + productId + ", cataId=" + cataId + ", pName=" + pName + ", Brand=" + Brand + ", weight=" + weight + ", Description=" + Description + ", stock=" + stock + ", date=" + date + ", image1=" + image1 + ", image2=" + image2 + ", Price=" + Price + '}';
    }
    
    
}
