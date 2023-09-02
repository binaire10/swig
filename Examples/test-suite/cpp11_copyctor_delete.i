%module cpp11_copyctor_delete

%inline %{
struct DeletedPublic1 {
  DeletedPublic1() = delete;
};
struct DeletedPublic2 {
  DeletedPublic2() = delete;
  DeletedPublic2(const DeletedPublic2&) = delete;
};
struct DeletedPublic3 {
  DeletedPublic3(const DeletedPublic3&) = delete;
};
struct DeletedPublic4 {
  DeletedPublic4() = default;
  DeletedPublic4(const DeletedPublic4&) = delete;
};
struct DeletedPublic5 {
  DeletedPublic5() = default;
  DeletedPublic5(const DeletedPublic5&) = delete;
};

struct DeletedProtected1 {
protected:
  DeletedProtected1() = delete;
};
struct DeletedProtected2 {
protected:
  DeletedProtected2() = delete;
  DeletedProtected2(const DeletedProtected2&) = delete;
};
struct DeletedProtected3 {
protected:
  DeletedProtected3(const DeletedProtected3&) = delete;
};
struct DeletedProtected4 {
protected:
  DeletedProtected4() = default;
  DeletedProtected4(const DeletedProtected4&) = delete;
};
struct DeletedProtected5 {
protected:
  DeletedProtected5() = default;
  DeletedProtected5(const DeletedProtected5&) = delete;
};

struct DeletedPrivate1 {
private:
  DeletedPrivate1() = delete;
};
struct DeletedPrivate2 {
private:
  DeletedPrivate2() = delete;
  DeletedPrivate2(const DeletedPrivate2&) = delete;
};
struct DeletedPrivate3 {
private:
  DeletedPrivate3(const DeletedPrivate3&) = delete;
};
struct DeletedPrivate4 {
private:
  DeletedPrivate4() = default;
  DeletedPrivate4(const DeletedPrivate4&) = delete;
};
struct DeletedPrivate5 {
private:
  DeletedPrivate5() = default;
  DeletedPrivate5(const DeletedPrivate5&) = delete;
};
%}

// copyctor feature turned on
%copyctor;
%inline %{
struct CopyCtorDeletedPublic1 {
  CopyCtorDeletedPublic1() = delete;
  static CopyCtorDeletedPublic1 make() { return {}; }
};
struct CopyCtorDeletedPublic2 {
  CopyCtorDeletedPublic2() = delete;
  CopyCtorDeletedPublic2(const CopyCtorDeletedPublic2&) = delete;
};
struct CopyCtorDeletedPublic3 {
  CopyCtorDeletedPublic3(const CopyCtorDeletedPublic3&) = delete;
};
struct CopyCtorDeletedPublic4 {
  CopyCtorDeletedPublic4() = default;
  CopyCtorDeletedPublic4(const CopyCtorDeletedPublic4&) = delete;
};
struct CopyCtorDeletedPublic5 {
  CopyCtorDeletedPublic5() = default;
  CopyCtorDeletedPublic5(const CopyCtorDeletedPublic5&) = delete;
};

struct CopyCtorDeletedProtected1 {
protected:
  CopyCtorDeletedProtected1() = delete;
public:
  static CopyCtorDeletedProtected1 make() { return {}; }
};
struct CopyCtorDeletedProtected2 {
protected:
  CopyCtorDeletedProtected2() = delete;
  CopyCtorDeletedProtected2(const CopyCtorDeletedProtected2&) = delete;
};
struct CopyCtorDeletedProtected3 {
protected:
  CopyCtorDeletedProtected3(const CopyCtorDeletedProtected3&) = delete;
};
struct CopyCtorDeletedProtected4 {
protected:
  CopyCtorDeletedProtected4() = default;
  CopyCtorDeletedProtected4(const CopyCtorDeletedProtected4&) = delete;
};
struct CopyCtorDeletedProtected5 {
protected:
  CopyCtorDeletedProtected5() = default;
  CopyCtorDeletedProtected5(const CopyCtorDeletedProtected5&) = delete;
};

struct CopyCtorDeletedPrivate1 {
private:
  CopyCtorDeletedPrivate1() = delete;
public:
  static CopyCtorDeletedPrivate1 make() { return {}; }
};
struct CopyCtorDeletedPrivate2 {
private:
  CopyCtorDeletedPrivate2() = delete;
  CopyCtorDeletedPrivate2(const CopyCtorDeletedPrivate2&) = delete;
};
struct CopyCtorDeletedPrivate3 {
private:
  CopyCtorDeletedPrivate3(const CopyCtorDeletedPrivate3&) = delete;
};
struct CopyCtorDeletedPrivate4 {
private:
  CopyCtorDeletedPrivate4() = default;
  CopyCtorDeletedPrivate4(const CopyCtorDeletedPrivate4&) = delete;
};
struct CopyCtorDeletedPrivate5 {
private:
  CopyCtorDeletedPrivate5() = default;
  CopyCtorDeletedPrivate5(const CopyCtorDeletedPrivate5&) = delete;
};
%}