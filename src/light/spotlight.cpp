#include "spotlight.h"

//==============================================================================
namespace cg {
    //==============================================================================
    SpotLight::SpotLight(const vec3& direction, double angle) : 
        m_direction(normalize(direction)), m_angle(angle) {};
    SpotLight::SpotLight(const vec3& direction, double angle, 
            double r, double g, double b) :
        Light{ r, g, b }, m_direction(normalize(direction)), m_angle(angle) {};
    SpotLight::SpotLight(const vec3& direction, double angle, 
            const vec3& spectral_intensity) :
        Light{ spectral_intensity }, 
        m_direction(normalize(direction)), 
        m_angle(angle) {};
    //----------------------------------------------------------------------------
    vec3 SpotLight::incident_radiance_at(const vec3& p) const {
        /*
           ============================================================================
           Task 1
           ============================================================================
           Calculate the incident radiance (i.e. the incoming light intensity) that
           a point p receives from this light source.
           See task description on how a spotlight is defined.

            Hint: 
            The light intensity (spectral_intensity) decreases quadratically with the 
            distance to the light source (inverse square law).
            See also pointlight.cpp.
            */
        const auto L = light_direction_to(p);
        const auto adotb = dot(m_direction, L);
        const auto angle = acosf(adotb / (L.length() * m_direction.length()));

        if(angle > m_angle){
            return vec3::zeros();
        } else{
            return spectral_intensity() / L.squared_length();
        }
    }
    //----------------------------------------------------------------------------
    vec3 SpotLight::light_direction_to(const vec3& p) const {
        return p - pos();
    }
    //----------------------------------------------------------------------------
    double SpotLight::distance_to(const vec3& p) const {
        return (p - pos()).length();
    }
    //==============================================================================
}  // namespace cg
   //==============================================================================
