package classes;

import java.sql.*;

public class NoteProsp {
private int ID;
private int PersonnelID;
private float NoteProspection;
private String DateobtentionPro;

public NoteProsp(int iD, int personnelID, float noteProspection,
		String dateobtentionPro) {
	
	ID = iD;
	PersonnelID = personnelID;
	NoteProspection = noteProspection;
	DateobtentionPro = dateobtentionPro;
}

/**
 * @param personnelID
 * @param noteProspection
 * @param dateobtentionPro
 */
public NoteProsp(int personnelID, float noteProspection, String dateobtentionPro) {
	super();
	PersonnelID = personnelID;
	NoteProspection = noteProspection;
	DateobtentionPro = dateobtentionPro;
}

/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "NoteProsp [ID=" + ID + ", PersonnelID=" + PersonnelID
			+ ", NoteProspection=" + NoteProspection + ", DateobtentionPro="
			+ DateobtentionPro + "]";
}
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public int getPersonnelID() {
	return PersonnelID;
}
public void setPersonnelID(int personnelID) {
	PersonnelID = personnelID;
}
public float getNoteProspection() {
	return NoteProspection;
}
public void setNoteProspection(float noteProspection) {
	NoteProspection = noteProspection;
}
public String getDateobtentionPro() {
	return DateobtentionPro;
}
public void setDateobtentionPro(String dateobtentionPro) {
	DateobtentionPro = dateobtentionPro;
}

}
