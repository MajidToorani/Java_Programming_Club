//    Document   : TKMTMemberTest.java
//    Created on : 12-April-2019
//    Author     : Majid Tooranisama
//    Observer   : Taraneh Khaleghi
package club.business;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class TKMTMemberTest {
    
public TKMTMemberTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getFullName method, of class Member.
     */
    @Test
    public void testGetFullName() {
        System.out.println("getFullName");
        Member instance = new Member("Taraneh Khaleghi", "tkhaleghi5062@conestogac.on.ca");
        String expResult = "Taraneh Khaleghi";
        String result = instance.getFullName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setFullName method, of class Member.
     */
    @Test
    public void testSetFullName() {
        System.out.println("setFullName");
        String fullName = "Taraneh Khaleghi";
        Member instance = new Member();
        instance.setFullName(fullName);
        assertEquals("Taraneh Khaleghi", instance.getFullName());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getEmailAddress method, of class Member.
     */
    @Test
    public void testGetEmailAddress() {
        System.out.println("getEmailAddress");
        Member instance = new Member("Taraneh Khaleghi", "tkhaleghi5062@conestogac.on.ca");
        String expResult = "tkhaleghi5062@conestogac.on.ca";
        String result = instance.getEmailAddress();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setEmailAddress method, of class Member.
     */
    @Test
    public void testSetEmailAddress() {
        System.out.println("setEmailAddress");
        String emailAddress = "tkhaleghi5062@conestogac.on.ca";
        Member instance = new Member();
        instance.setEmailAddress(emailAddress);
        assertEquals("tkhaleghi5062@conestogac.on.ca", instance.getEmailAddress());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getPhoneNumber method, of class Member.
     */
    @Test
    public void testGetPhoneNumber() {
        System.out.println("getPhoneNumber");
        Member instance = new Member();
        String expResult = "1234567890";
        instance.setPhoneNumber("1234567890");
        String result = instance.getPhoneNumber();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setPhoneNumber method, of class Member.
     */
    @Test
    public void testSetPhoneNumber() {
        System.out.println("setPhoneNumber");
        String phoneNumber = "1234567890";
        Member instance = new Member();
        instance.setPhoneNumber(phoneNumber);
        assertEquals("1234567890", instance.getPhoneNumber());
        // TODO review the generated test code and remove the default call to fail.
       // fail("The test case is a prototype.");
    }

    /**
     * Test of getProgramName method, of class Member.
     */
    @Test
    public void testGetProgramName() {
        System.out.println("getProgramName");
        Member instance = new Member();
        String expResult = "ITID";
        instance.setProgramName("ITID");
        String result = instance.getProgramName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setProgramName method, of class Member.
     */
    @Test
    public void testSetProgramName() {
        System.out.println("setProgramName");
        String programName = "ITID";
        Member instance = new Member();
        instance.setProgramName(programName);
        assertEquals("ITID", instance.getProgramName());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getYearLevel method, of class Member.
     */
    @Test
    public void testGetYearLevel() {
        System.out.println("getYearLevel");
        Member instance = new Member();
        int expResult = 2;
        instance.setYearLevel(2);
        int result = instance.getYearLevel();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setYearLevel method, of class Member.
     */
    @Test
    public void testSetYearLevel() {
        System.out.println("setYearLevel");
        int yearLevel = 2;
        Member instance = new Member();
        instance.setYearLevel(yearLevel);
        assertEquals(2, instance.getYearLevel());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of isValid method, of class Member.
     */
    @Test
    public void testValidPositive(){
        System.out.println("isValidPositive");
        String full="Taraneh Khaleghi";
        String email="tkhaleghi5062@conestogac.on.ca";
        Member instance = new Member(full, email);
        boolean expResult = true;
        boolean result = instance.isValid();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
     @Test
     public void testValidNegative() {
        System.out.println("isValidNegative");
        Member instance = new Member();
        boolean expResult = false;
        boolean result = instance.isValid();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }    
}

