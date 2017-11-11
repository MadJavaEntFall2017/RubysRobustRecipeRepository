package edu.matc.incarcerationanalyzer.controller;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
import java.util.HashSet;
import java.util.Set;

//Defines the base URI for all resource URIs.
@ApplicationPath("teamproject")

//The java class declares root resource and provider classes
public class StartupApplication extends Application {

    //The method returns a non-empty collection with classes, that must be included in the published JAX-RS application
    @Override
    public Set<Class<?>> getClasses() {
        HashSet h = new HashSet<Class<?>>();
        h.add(StartupServlet.class );
        h.add(FacilityById.class);
        h.add(CheckinOut.class);
        return h;
    }
}