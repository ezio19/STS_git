package dz.ifa.model.nomenclature;

import javax.persistence.*;

/**
 * Created by Yazid on 13/05/2016.
 */
@Entity
public class Testing {

    @TableGenerator(name = "testingGen", allocationSize = 1)
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "testingGen")
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column
    private String designation;

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
}
