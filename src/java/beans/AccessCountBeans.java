/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author Aisha
 */
public class AccessCountBeans {
    private String firstPage;
    private int accessCount = 1;

    public String getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(String firstPage) {
        this.firstPage = firstPage;
    }

    public int getAccessCount() {
        return accessCount;
    }

    public void setAccessCount(int increment) {
        this.accessCount = accessCount + increment;
    }
 
}
