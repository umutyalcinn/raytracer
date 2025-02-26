#ifndef CG_RENDERABLE_H
#define CG_RENDERABLE_H
//==============================================================================
#include <memory>
#include "clonable.h"
#include "material.h"
#include "movable.h"
#include "intersection.h"
#include "intersectable.h"
//==============================================================================
namespace cg {
//==============================================================================
/// \brief Renderables are interfaces for objects that can be rendered.
class Renderable : public Movable,
                   public Intersectable,
                   public Clonable<Renderable> {
  std::unique_ptr<Material> m_material;
 public:
  //----------------------------------------------------------------------------
  /// Copy contructor
  Renderable(const Renderable& other)
      : Movable{other}, m_material{other.m_material->clone()} {}
  //----------------------------------------------------------------------------
  /// Move constructor
  Renderable(Renderable&& other) noexcept
      : Movable{std::move(other)}, m_material{std::move(other.m_material)} {}
  //----------------------------------------------------------------------------
  /// Copy assignment operator
  Renderable& operator=(const Renderable& other) {
    Movable::operator=(other);
    m_material       = other.m_material->clone();
    return *this;
  }
  //----------------------------------------------------------------------------
  /// Move assignment operator
  Renderable& operator=(Renderable&& other) noexcept{
    Movable::operator=(std::move(other));
    m_material       = std::move(other.m_material);
    return *this;
  }
  //----------------------------------------------------------------------------
  /// \param m Material for the Renderable
  Renderable(const Material& m) : m_material{m.clone()} {}
  virtual ~Renderable() = default;
  //----------------------------------------------------------------------------
  /// \brief Shade the renderable.
  /// \param l Light source used for shading.
  /// \param i Intersection point that shall be shaded.
  /// \returns an RGB color.
  auto shade(const Light& l, const Intersection& i) const {
    return m_material->shade(l, i);
  }
  //----------------------------------------------------------------------------
  void        set_material(const Material& m) { m_material = m.clone(); }
  const auto& material() const { return *m_material; }
  //----------------------------------------------------------------------------
  auto sample_albedo_color(const vec2& uv) const {
    return m_material->sample_albedo_color(uv);
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  auto sample_albedo_color(const double u, const double v) const {
    return m_material->sample_albedo_color(u, v);
  }
  //----------------------------------------------------------------------------
  auto sample_reflective_color(const vec2& uv) const {
    return m_material->sample_reflective_color(uv);
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  auto sample_reflective_color(const double u, const double v) const {
    return m_material->sample_reflective_color(u, v);
  }
  //----------------------------------------------------------------------------
  auto sample_refractive_color(const vec2& uv) const {
    return m_material->sample_refractive_color(uv);
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  auto sample_refractive_color(const double u, const double v) const {
    return m_material->sample_refractive_color(u, v);
  }
  //----------------------------------------------------------------------------
  auto  reflectance() const { return m_material->reflectance(); }
  auto  set_reflectance(const double reflectance) {
    m_material->set_reflectance(reflectance);
  }
  //----------------------------------------------------------------------------
  auto  refractance() const { return m_material->refractance(); }
  auto  set_refractance(const double refractance) {
    m_material->set_refractance(refractance);
  }
  //----------------------------------------------------------------------------
  auto index_of_refraction() const { return m_material->index_of_refraction(); }
  auto set_index_of_refraction(const double ior) {
    m_material->set_index_of_refraction(ior);
  }
};
//==============================================================================
}  // namespace cg
//==============================================================================
#endif
