; ModuleID = './get_vdir.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/get_vdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.pfs_auth_info = type { [100 x i8], [250 x i8] }
%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }

@perrno = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"+ATTRIBUTES\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"+EXPAND\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"+LEXPAND\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%#$PRobably_nOn_existaNT$#%\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"VERSION %d\0AAUTHENTICATOR %s %s\0ADIRECTORY ASCII %s\0ALIST %s COMPONENTS %s%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LINK-INFO\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"LINK %c %s %s %s %s %s %s %d %d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"FORWARDED\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"FORWARDED %s %s %s %s %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"NONE-FOUND\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"UNRESOLVED\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"UNRESOLVED %s\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"VERSION-NOT-SUPPORTED\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_vdir(i8* noundef %0, i8* noundef %1, i8* noundef %2, %struct.vdir* noundef %3, i64 noundef %4, %struct.vlink* noundef readnone %5, i8* noundef %6) #0 {
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [40 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca [4256 x i8], align 16
  %12 = alloca [4256 x i8], align 16
  %13 = alloca [4256 x i8], align 16
  %14 = alloca [4256 x i8], align 16
  %15 = alloca [4256 x i8], align 16
  %16 = alloca [4256 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca [4256 x i8], align 16
  %19 = alloca i32, align 4
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %22, label %20

20:                                               ; preds = %7
  %21 = load i8, i8* %2, align 1
  %.not149 = icmp eq i8 %21, 0
  br i1 %.not149, label %22, label %23

22:                                               ; preds = %20, %7
  br label %23

23:                                               ; preds = %22, %20
  %.010 = phi i8* [ %2, %20 ], [ null, %22 ]
  %.not94 = icmp eq i8* %6, null
  br i1 %.not94, label %26, label %24

24:                                               ; preds = %23
  %.not148 = icmp eq %struct.vlink* %5, null
  br i1 %.not148, label %25, label %26

25:                                               ; preds = %24
  br label %27

26:                                               ; preds = %24, %23
  br label %27

27:                                               ; preds = %26, %25
  %.028 = phi i32 [ 0, %26 ], [ 1, %25 ]
  %28 = and i64 %4, 32
  %.not95 = icmp eq i64 %28, 0
  br i1 %.not95, label %31, label %29

29:                                               ; preds = %27
  %30 = and i64 %4, -33
  br label %31

31:                                               ; preds = %29, %27
  %.04 = phi i64 [ %30, %29 ], [ %4, %27 ]
  %32 = and i64 %.04, 64
  %.not96 = icmp eq i64 %32, 0
  br i1 %.not96, label %34, label %33

33:                                               ; preds = %31
  br label %35

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %33
  %.035 = phi i32 [ 2, %33 ], [ 1, %34 ]
  %36 = and i64 %.04, -65
  %.not97 = icmp eq %struct.vlink* %5, null
  br i1 %.not97, label %38, label %37

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %35
  %.111 = phi i8* [ null, %37 ], [ %.010, %35 ]
  store i32 0, i32* @perrno, align 4
  %39 = call %struct.pfs_auth_info* (i32, ...) bitcast (%struct.pfs_auth_info* (...)* @get_pauth to %struct.pfs_auth_info* (i32, ...)*)(i32 noundef 1) #5
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %40, align 16
  br i1 %.not95, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %strlen146 = call i64 @strlen(i8* nonnull %42)
  %endptr147 = getelementptr [40 x i8], [40 x i8]* %9, i64 0, i64 %strlen146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %endptr147, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false)
  %43 = and i64 %.04, -97
  br label %44

44:                                               ; preds = %41, %38
  %.1 = phi i64 [ %43, %41 ], [ %36, %38 ]
  %.not99 = icmp eq %struct.vlink* %5, null
  br i1 %.not99, label %45, label %55

45:                                               ; preds = %44
  %46 = icmp eq i64 %.1, 7
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %strlen144 = call i64 @strlen(i8* nonnull %48)
  %endptr145 = getelementptr [40 x i8], [40 x i8]* %9, i64 0, i64 %strlen144
  %49 = bitcast i8* %endptr145 to i64*
  store i64 19226340844127531, i64* %49, align 1
  br label %50

50:                                               ; preds = %47, %45
  %51 = icmp eq i64 %.1, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %strlen = call i64 @strlen(i8* nonnull %53)
  %endptr = getelementptr [40 x i8], [40 x i8]* %9, i64 0, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %endptr, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 9, i1 false)
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %44
  %56 = icmp eq i64 %.1, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %55
  %.212 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %57 ], [ %.111, %55 ]
  %59 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %60 = load i8, i8* %59, align 16
  %.not100 = icmp eq i8 %60, 0
  br i1 %.not100, label %63, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 1
  br label %64

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %61
  %.06 = phi i8* [ %62, %61 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %63 ]
  br label %.outer

.outer:                                           ; preds = %371, %64
  %.036.ph = phi i32 [ %.137, %371 ], [ 20, %64 ]
  %.129.ph = phi i32 [ %.230, %371 ], [ %.028, %64 ]
  %.018.ph = phi %struct.vlink* [ %.025, %371 ], [ null, %64 ]
  %.014.ph = phi %struct.vlink* [ %.115, %371 ], [ null, %64 ]
  %.313.ph = phi i8* [ %.10, %371 ], [ %.212, %64 ]
  %.07.ph = phi i32 [ %.18, %371 ], [ 0, %64 ]
  %.02.ph = phi i8* [ %376, %371 ], [ %1, %64 ]
  %.01.ph = phi i8* [ %374, %371 ], [ %0, %64 ]
  br label %65

65:                                               ; preds = %.outer, %239
  %.036 = phi i32 [ %224, %239 ], [ %.036.ph, %.outer ]
  %.019 = phi %struct.vlink* [ %.221, %239 ], [ %.018.ph, %.outer ]
  %.014 = phi %struct.vlink* [ %.216, %239 ], [ %.014.ph, %.outer ]
  %.313 = phi i8* [ %.5, %239 ], [ %.313.ph, %.outer ]
  %.07 = phi i32 [ %.2, %239 ], [ %.07.ph, %.outer ]
  %.02 = phi i8* [ %236, %239 ], [ %.02.ph, %.outer ]
  %.01 = phi i8* [ %234, %239 ], [ %.01.ph, %.outer ]
  %66 = call %struct.ptext* (...) @ptalloc() #5
  %67 = getelementptr inbounds %struct.ptext, %struct.ptext* %66, i64 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %39, i64 0, i32 0, i64 0
  %70 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %39, i64 0, i32 1, i64 0
  %.not101 = icmp eq i8* %.313, null
  br i1 %.not101, label %72, label %71

71:                                               ; preds = %65
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %71
  %74 = phi i8* [ %.313, %71 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %72 ]
  %.not102 = icmp eq i32 %.129.ph, 0
  %75 = select i1 %.not102, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %.not103 = icmp eq i32 %.129.ph, 0
  br i1 %.not103, label %77, label %76

76:                                               ; preds = %73
  br label %78

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %76
  %79 = phi i8* [ %6, %76 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %77 ]
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %68, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1, i8* noundef %69, i8* noundef nonnull %70, i8* noundef %.02, i8* noundef %.06, i8* noundef %74, i8* noundef %75, i8* noundef %79) #5
  %81 = getelementptr inbounds %struct.ptext, %struct.ptext* %66, i64 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %82) #5
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.ptext, %struct.ptext* %66, i64 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = call %struct.ptext* (%struct.ptext*, i8*, i32, ...) bitcast (%struct.ptext* (...)* @dirsend to %struct.ptext* (%struct.ptext*, i8*, i32, ...)*)(%struct.ptext* noundef %66, i8* noundef %.01, i32 noundef 0) #5
  %87 = icmp eq %struct.ptext* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %.not143 = icmp eq %struct.vlink* %.018.ph, null
  br i1 %.not143, label %91, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.vlink, %struct.vlink* %.018.ph, i64 0, i32 3
  store i32 -1, i32* %90, align 4
  br label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @perrno, align 4
  br label %428

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %318, %94
  %.137 = phi i32 [ %.036, %94 ], [ %.238, %318 ]
  %.031 = phi i32 [ 0, %94 ], [ %.132, %318 ]
  %.120 = phi %struct.vlink* [ %.019, %94 ], [ %.221, %318 ]
  %.115 = phi %struct.vlink* [ %.014, %94 ], [ %.216, %318 ]
  %.4 = phi i8* [ %.313, %94 ], [ %.5, %318 ]
  %.09 = phi %struct.ptext* [ %86, %94 ], [ %320, %318 ]
  %.18 = phi i32 [ %.07, %94 ], [ %.2, %318 ]
  %.not104 = icmp eq %struct.ptext* %.09, null
  br i1 %.not104, label %321, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.ptext, %struct.ptext* %.09, i64 0, i32 1
  %98 = load i8*, i8** %97, align 8
  br label %99

99:                                               ; preds = %316, %96
  %.238 = phi i32 [ %.137, %96 ], [ %.339, %316 ]
  %.132 = phi i32 [ %.031, %96 ], [ %.233, %316 ]
  %.221 = phi %struct.vlink* [ %.120, %96 ], [ %.524, %316 ]
  %.216 = phi %struct.vlink* [ %.115, %96 ], [ %.317, %316 ]
  %.5 = phi i8* [ %.4, %96 ], [ %.8, %316 ]
  %.2 = phi i32 [ %.18, %96 ], [ %.3, %316 ]
  %.05 = phi i8* [ %98, %96 ], [ %317, %316 ]
  %.not121 = icmp eq i8* %.05, null
  br i1 %.not121, label %318, label %100

100:                                              ; preds = %99
  %101 = load i8, i8* %.05, align 1
  %102 = sext i8 %101 to i32
  switch i32 %102, label %309 [
    i32 76, label %103
    i32 70, label %220
    i32 77, label %244
    i32 80, label %244
    i32 78, label %245
    i32 85, label %270
    i32 86, label %303
  ]

103:                                              ; preds = %100
  %104 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9) #5
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %103
  %107 = call %struct.pattrib* (i8*, ...) bitcast (%struct.pattrib* (...)* @parse_attribute to %struct.pattrib* (i8*, ...)*)(i8* noundef nonnull %.05) #5
  %.not139 = icmp eq %struct.pattrib* %107, null
  br i1 %.not139, label %108, label %109

108:                                              ; preds = %106
  br label %315

109:                                              ; preds = %106
  %.not140 = icmp eq %struct.vlink* %.216, null
  br i1 %.not140, label %110, label %111

110:                                              ; preds = %109
  store i32 252, i32* @perrno, align 4
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* noundef nonnull %107) #5
  br label %315

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.vlink, %struct.vlink* %.216, i64 0, i32 17
  %113 = load %struct.pattrib*, %struct.pattrib** %112, align 8
  %.not141 = icmp eq %struct.pattrib* %113, null
  br i1 %.not141, label %124, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.vlink, %struct.vlink* %.216, i64 0, i32 17
  br label %116

116:                                              ; preds = %119, %114
  %.03.in = phi %struct.pattrib** [ %115, %114 ], [ %120, %119 ]
  %.03 = load %struct.pattrib*, %struct.pattrib** %.03.in, align 8
  %117 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.03, i64 0, i32 5
  %118 = load %struct.pattrib*, %struct.pattrib** %117, align 8
  %.not142 = icmp eq %struct.pattrib* %118, null
  br i1 %.not142, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.03, i64 0, i32 5
  br label %116, !llvm.loop !4

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %107, i64 0, i32 4
  store %struct.pattrib* %.03, %struct.pattrib** %122, align 8
  %123 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.03, i64 0, i32 5
  store %struct.pattrib* %107, %struct.pattrib** %123, align 8
  br label %127

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.vlink, %struct.vlink* %.216, i64 0, i32 17
  store %struct.pattrib* %107, %struct.pattrib** %125, align 8
  %126 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %107, i64 0, i32 4
  store %struct.pattrib* null, %struct.pattrib** %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  br label %315

128:                                              ; preds = %103
  %129 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 4) #5
  %.not130 = icmp eq i32 %129, 0
  br i1 %.not130, label %131, label %130

130:                                              ; preds = %128
  br label %308

131:                                              ; preds = %128
  %132 = icmp eq i64 %.1, 8
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  br label %315

134:                                              ; preds = %131
  %135 = add nsw i32 %.2, 1
  %.not131 = icmp eq i32 %.2, 0
  br i1 %.not131, label %136, label %151

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %138 = load %struct.vlink*, %struct.vlink** %137, align 8
  %.not132 = icmp eq %struct.vlink* %138, null
  br i1 %.not132, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %141 = load %struct.vlink*, %struct.vlink** %140, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %141) #5
  br label %142

142:                                              ; preds = %139, %136
  %143 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  store %struct.vlink* null, %struct.vlink** %143, align 8
  %144 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  %145 = load %struct.vlink*, %struct.vlink** %144, align 8
  %.not133 = icmp eq %struct.vlink* %145, null
  br i1 %.not133, label %149, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  %148 = load %struct.vlink*, %struct.vlink** %147, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %148) #5
  br label %149

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  store %struct.vlink* null, %struct.vlink** %150, align 8
  br label %151

151:                                              ; preds = %149, %134
  %152 = call %struct.vlink* (...) @vlalloc() #5
  %153 = getelementptr inbounds [4256 x i8], [4256 x i8]* %12, i64 0, i64 0
  %154 = getelementptr inbounds [4256 x i8], [4256 x i8]* %11, i64 0, i64 0
  %155 = getelementptr inbounds [4256 x i8], [4256 x i8]* %13, i64 0, i64 0
  %156 = getelementptr inbounds [4256 x i8], [4256 x i8]* %14, i64 0, i64 0
  %157 = getelementptr inbounds [4256 x i8], [4256 x i8]* %15, i64 0, i64 0
  %158 = getelementptr inbounds [4256 x i8], [4256 x i8]* %16, i64 0, i64 0
  %159 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 11
  %160 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 12
  %161 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.05, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %10, i8* noundef nonnull %153, i8* noundef nonnull %154, i8* noundef nonnull %155, i8* noundef nonnull %156, i8* noundef nonnull %157, i8* noundef nonnull %158, i64* noundef nonnull %159, i64* noundef nonnull %160) #5
  %.not134 = icmp eq i32 %161, 9
  br i1 %.not134, label %163, label %162

162:                                              ; preds = %151
  store i32 252, i32* @perrno, align 4
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %152) #5
  br label %315

163:                                              ; preds = %151
  %164 = load i8, i8* %10, align 1
  %165 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 2
  store i8 %164, i8* %165, align 8
  %166 = getelementptr inbounds [4256 x i8], [4256 x i8]* %12, i64 0, i64 0
  %167 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %166, i8* noundef %168) #5
  %170 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 4
  store i8* %169, i8** %170, align 8
  %171 = getelementptr inbounds [4256 x i8], [4256 x i8]* %11, i64 0, i64 0
  %172 = call i8* (i8*, ...) bitcast (i8* (...)* @unquote to i8* (i8*, ...)*)(i8* noundef nonnull %171) #5
  %173 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %172, i8* noundef %174) #5
  %176 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 1
  store i8* %175, i8** %176, align 8
  %177 = getelementptr inbounds [4256 x i8], [4256 x i8]* %13, i64 0, i64 0
  %178 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 7
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %177, i8* noundef %179) #5
  %181 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 7
  store i8* %180, i8** %181, align 8
  %182 = getelementptr inbounds [4256 x i8], [4256 x i8]* %14, i64 0, i64 0
  %183 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 8
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %182, i8* noundef %184) #5
  %186 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 8
  store i8* %185, i8** %186, align 8
  %187 = getelementptr inbounds [4256 x i8], [4256 x i8]* %15, i64 0, i64 0
  %188 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 9
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %187, i8* noundef %189) #5
  %191 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 9
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds [4256 x i8], [4256 x i8]* %16, i64 0, i64 0
  %193 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 10
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %192, i8* noundef %194) #5
  %196 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 10
  store i8* %195, i8** %196, align 8
  %.not135 = icmp eq i32 %.129.ph, 0
  br i1 %.not135, label %197, label %206

197:                                              ; preds = %163
  %198 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 2
  %199 = load i8, i8* %198, align 8
  %200 = icmp eq i8 %199, 76
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @wcmatch(i8* noundef %203, i8* noundef %.5) #5
  %.not138 = icmp eq i32 %204, 0
  br i1 %.not138, label %205, label %206

205:                                              ; preds = %201
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %152) #5
  br label %315

206:                                              ; preds = %201, %197, %163
  %207 = getelementptr inbounds %struct.vlink, %struct.vlink* %152, i64 0, i32 2
  %208 = load i8, i8* %207, align 8
  %209 = icmp eq i8 %208, 76
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 @vl_insert(%struct.vlink* noundef %152, %struct.vdir* noundef %3, i32 noundef %.035) #5
  br label %219

212:                                              ; preds = %206
  %213 = call i32 @ul_insert(%struct.vlink* noundef %152, %struct.vdir* noundef %3, %struct.vlink* noundef %.221) #5
  %.not136 = icmp eq %struct.vlink* %.221, null
  br i1 %.not136, label %218, label %214

214:                                              ; preds = %212
  %.not137 = icmp eq i32 %213, 0
  br i1 %.not137, label %217, label %215

215:                                              ; preds = %214
  %216 = icmp eq i32 %213, 26
  br i1 %216, label %217, label %218

217:                                              ; preds = %215, %214
  br label %218

218:                                              ; preds = %217, %215, %212
  %.322 = phi %struct.vlink* [ %152, %217 ], [ %.221, %215 ], [ %.221, %212 ]
  br label %219

219:                                              ; preds = %218, %210
  %.423 = phi %struct.vlink* [ %.221, %210 ], [ %.322, %218 ]
  br label %315

220:                                              ; preds = %100
  %221 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9) #5
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = add nsw i32 %.238, -1
  %225 = icmp slt i32 %.238, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef nonnull %.09) #5
  store i32 235, i32* @perrno, align 4
  br label %428

227:                                              ; preds = %223
  %228 = getelementptr inbounds [4256 x i8], [4256 x i8]* %13, i64 0, i64 0
  %229 = getelementptr inbounds [4256 x i8], [4256 x i8]* %14, i64 0, i64 0
  %230 = getelementptr inbounds [4256 x i8], [4256 x i8]* %15, i64 0, i64 0
  %231 = getelementptr inbounds [4256 x i8], [4256 x i8]* %16, i64 0, i64 0
  %232 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.05, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %228, i8* noundef nonnull %229, i8* noundef nonnull %230, i8* noundef nonnull %231, i32* noundef nonnull %17, i32* noundef nonnull %19) #5
  %233 = getelementptr inbounds [4256 x i8], [4256 x i8]* %14, i64 0, i64 0
  %234 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef nonnull %233) #5
  %235 = getelementptr inbounds [4256 x i8], [4256 x i8]* %16, i64 0, i64 0
  %236 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef nonnull %235) #5
  %237 = icmp slt i32 %232, 4
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  store i32 252, i32* @perrno, align 4
  br label %315

239:                                              ; preds = %227
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef nonnull %.09) #5
  br label %65

240:                                              ; preds = %220
  %241 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 noundef 6) #5
  %.not129 = icmp eq i32 %241, 0
  br i1 %.not129, label %243, label %242

242:                                              ; preds = %240
  br label %308

243:                                              ; preds = %240
  br label %315

244:                                              ; preds = %100, %100
  br label %315

245:                                              ; preds = %100
  %246 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 noundef 10) #5
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %245
  %249 = icmp eq i64 %.1, 8
  br i1 %249, label %250, label %251

250:                                              ; preds = %248
  br label %315

251:                                              ; preds = %248
  %252 = add nsw i32 %.2, 1
  %.not126 = icmp eq i32 %.2, 0
  br i1 %.not126, label %253, label %268

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %255 = load %struct.vlink*, %struct.vlink** %254, align 8
  %.not127 = icmp eq %struct.vlink* %255, null
  br i1 %.not127, label %259, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %258 = load %struct.vlink*, %struct.vlink** %257, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %258) #5
  br label %259

259:                                              ; preds = %256, %253
  %260 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  %261 = load %struct.vlink*, %struct.vlink** %260, align 8
  %.not128 = icmp eq %struct.vlink* %261, null
  br i1 %.not128, label %265, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  %264 = load %struct.vlink*, %struct.vlink** %263, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %264) #5
  br label %265

265:                                              ; preds = %262, %259
  %266 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  store %struct.vlink* null, %struct.vlink** %266, align 8
  %267 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  store %struct.vlink* null, %struct.vlink** %267, align 8
  br label %268

268:                                              ; preds = %265, %251
  br label %315

269:                                              ; preds = %245
  br label %308

270:                                              ; preds = %100
  %271 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 noundef 10) #5
  %.not124 = icmp eq i32 %271, 0
  br i1 %.not124, label %273, label %272

272:                                              ; preds = %270
  br label %308

273:                                              ; preds = %270
  %274 = getelementptr inbounds [4256 x i8], [4256 x i8]* %18, i64 0, i64 0
  %275 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.05, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %274) #5
  %276 = icmp slt i32 %275, 1
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 252, i32* @perrno, align 4
  br label %315

278:                                              ; preds = %273
  %279 = getelementptr inbounds [4256 x i8], [4256 x i8]* %18, i64 0, i64 0
  %280 = call i64 @strlen(i8* noundef nonnull %279) #5
  %281 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %6) #5
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %302

283:                                              ; preds = %278
  %284 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %285 = call i8* @strcpy(i8* noundef nonnull %284, i8* noundef nonnull dereferenceable(1) %6) #5
  %286 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %6) #5
  %287 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %286
  %288 = getelementptr inbounds [4256 x i8], [4256 x i8]* %18, i64 0, i64 0
  %289 = call i64 @strlen(i8* noundef nonnull %288) #5
  %290 = sub i64 0, %289
  %291 = getelementptr inbounds i8, i8* %287, i64 -1
  %292 = getelementptr inbounds i8, i8* %291, i64 %290
  store i8 0, i8* %292, align 1
  %293 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %294 = call i8* @strrchr(i8* noundef nonnull %293, i32 noundef 47) #5
  %.not125 = icmp eq i8* %294, null
  br i1 %.not125, label %297, label %295

295:                                              ; preds = %283
  %296 = getelementptr inbounds i8, i8* %294, i64 1
  br label %299

297:                                              ; preds = %283
  %298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  br label %299

299:                                              ; preds = %297, %295
  %.6 = phi i8* [ %296, %295 ], [ %298, %297 ]
  %300 = getelementptr inbounds [4256 x i8], [4256 x i8]* %18, i64 0, i64 0
  %301 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull %300) #5
  br label %302

302:                                              ; preds = %299, %278
  %.7 = phi i8* [ %.6, %299 ], [ %.5, %278 ]
  br label %315

303:                                              ; preds = %100
  %304 = call i32 @strncmp(i8* noundef nonnull %.05, i8* noundef nonnull dereferenceable(22) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i64 noundef 21) #5
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i32 245, i32* @perrno, align 4
  br label %428

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307, %272, %269, %242, %130
  br label %309

309:                                              ; preds = %308, %100
  %310 = load i8, i8* %.05, align 1
  %.not122 = icmp eq i8 %310, 0
  br i1 %.not122, label %314, label %311

311:                                              ; preds = %309
  %312 = call i32 @scan_error(i8* noundef nonnull %.05) #5
  %.not123 = icmp eq i32 %312, 0
  br i1 %.not123, label %314, label %313

313:                                              ; preds = %311
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef nonnull %.09) #5
  br label %428

314:                                              ; preds = %311, %309
  br label %315

315:                                              ; preds = %314, %302, %277, %268, %250, %244, %243, %238, %219, %205, %162, %133, %127, %110, %108
  %.339 = phi i32 [ %.238, %314 ], [ %.238, %277 ], [ %.238, %302 ], [ %.238, %250 ], [ %.238, %268 ], [ %.238, %244 ], [ %224, %238 ], [ %.238, %243 ], [ %.238, %127 ], [ %.238, %110 ], [ %.238, %108 ], [ %.238, %133 ], [ %.238, %162 ], [ %.238, %219 ], [ %.238, %205 ]
  %.233 = phi i32 [ %.132, %314 ], [ %.132, %277 ], [ 1, %302 ], [ %.132, %250 ], [ %.132, %268 ], [ %.132, %244 ], [ %.132, %238 ], [ %.132, %243 ], [ %.132, %127 ], [ %.132, %110 ], [ %.132, %108 ], [ %.132, %133 ], [ %.132, %162 ], [ %.132, %219 ], [ %.132, %205 ]
  %.524 = phi %struct.vlink* [ %.221, %314 ], [ %.221, %277 ], [ %.221, %302 ], [ %.221, %250 ], [ %.221, %268 ], [ %.221, %244 ], [ %.221, %238 ], [ %.221, %243 ], [ %.221, %127 ], [ %.221, %110 ], [ %.221, %108 ], [ %.221, %133 ], [ %.221, %162 ], [ %.423, %219 ], [ %.221, %205 ]
  %.317 = phi %struct.vlink* [ %.216, %314 ], [ %.216, %277 ], [ %.216, %302 ], [ %.216, %250 ], [ %.216, %268 ], [ %.216, %244 ], [ %.216, %238 ], [ %.216, %243 ], [ %.216, %127 ], [ %.216, %110 ], [ %.216, %108 ], [ %.216, %133 ], [ %152, %162 ], [ %152, %219 ], [ %152, %205 ]
  %.8 = phi i8* [ %.5, %314 ], [ %.5, %277 ], [ %.7, %302 ], [ %.5, %250 ], [ %.5, %268 ], [ %.5, %244 ], [ %.5, %238 ], [ %.5, %243 ], [ %.5, %127 ], [ %.5, %110 ], [ %.5, %108 ], [ %.5, %133 ], [ %.5, %162 ], [ %.5, %219 ], [ %.5, %205 ]
  %.3 = phi i32 [ %.2, %314 ], [ %.2, %277 ], [ %.2, %302 ], [ %.2, %250 ], [ %252, %268 ], [ %.2, %244 ], [ %.2, %238 ], [ %.2, %243 ], [ %.2, %127 ], [ %.2, %110 ], [ %.2, %108 ], [ %.2, %133 ], [ %135, %162 ], [ %135, %219 ], [ %135, %205 ]
  br label %316

316:                                              ; preds = %315
  %317 = call i8* (i8*, ...) bitcast (i8* (...)* @nxtline to i8* (i8*, ...)*)(i8* noundef nonnull %.05) #5
  br label %99, !llvm.loop !6

318:                                              ; preds = %99
  %319 = getelementptr inbounds %struct.ptext, %struct.ptext* %.09, i64 0, i32 5
  %320 = load %struct.ptext*, %struct.ptext** %319, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef nonnull %.09) #5
  br label %95, !llvm.loop !7

321:                                              ; preds = %95
  %.not105 = icmp eq i32 %.129.ph, 0
  br i1 %.not105, label %333, label %322

322:                                              ; preds = %321
  %.not119 = icmp eq i32 %.031, 0
  br i1 %.not119, label %323, label %333

323:                                              ; preds = %322
  %324 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %325 = call i8* @strcpy(i8* noundef nonnull %324, i8* noundef nonnull dereferenceable(1) %6) #5
  %326 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %327 = call i8* @strrchr(i8* noundef nonnull %326, i32 noundef 47) #5
  %.not120 = icmp eq i8* %327, null
  br i1 %.not120, label %330, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds i8, i8* %327, i64 1
  br label %332

330:                                              ; preds = %323
  %331 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  br label %332

332:                                              ; preds = %330, %328
  %.9 = phi i8* [ %329, %328 ], [ %331, %330 ]
  store i8 0, i8* %6, align 1
  br label %333

333:                                              ; preds = %332, %322, %321
  %.230 = phi i32 [ %.129.ph, %322 ], [ 0, %332 ], [ %.129.ph, %321 ]
  %.10 = phi i8* [ %.4, %322 ], [ %.9, %332 ], [ %.4, %321 ]
  %334 = icmp eq i64 %.1, 8
  br i1 %334, label %335, label %336

335:                                              ; preds = %333
  br label %428

336:                                              ; preds = %333
  %337 = and i64 %.1, 16
  %.not106 = icmp eq i64 %337, 0
  br i1 %.not106, label %343, label %338

338:                                              ; preds = %336
  %339 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %340 = load %struct.vlink*, %struct.vlink** %339, align 8
  %.not117 = icmp eq %struct.vlink* %340, null
  br i1 %.not117, label %343, label %341

341:                                              ; preds = %338
  %.not118 = icmp eq %struct.vlink* %5, null
  br i1 %.not118, label %342, label %343

342:                                              ; preds = %341
  br label %428

343:                                              ; preds = %341, %338, %336
  br label %344

344:                                              ; preds = %343
  %.not107 = icmp eq i64 %.1, 0
  br i1 %.not107, label %.loopexit, label %345

345:                                              ; preds = %344
  %.not113 = icmp eq i64 %.1, 8
  br i1 %.not113, label %.loopexit, label %346

346:                                              ; preds = %345
  %347 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 7
  br label %348

348:                                              ; preds = %358, %346
  %.025.in = phi %struct.vlink** [ %347, %346 ], [ %359, %358 ]
  %.025 = load %struct.vlink*, %struct.vlink** %.025.in, align 8
  %.not114 = icmp eq %struct.vlink* %.025, null
  br i1 %.not114, label %356, label %349

349:                                              ; preds = %348
  %350 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 3
  %351 = load i32, i32* %350, align 4
  %.not116 = icmp eq i32 %351, 0
  br i1 %.not116, label %356, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 2
  %354 = load i8, i8* %353, align 8
  %355 = icmp eq i8 %354, 85
  br label %356

356:                                              ; preds = %352, %349, %348
  %357 = phi i1 [ false, %349 ], [ false, %348 ], [ %355, %352 ]
  br i1 %357, label %358, label %360

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 20
  br label %348, !llvm.loop !8

360:                                              ; preds = %356
  %.not115 = icmp eq %struct.vlink* %.025, null
  br i1 %.not115, label %.loopexit40, label %361

361:                                              ; preds = %360
  %362 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 4
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %363, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #5
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %371, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 4
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %368, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #5
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %366, %361
  %372 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 3
  store i32 1, i32* %372, align 4
  %373 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 8
  %374 = load i8*, i8** %373, align 8
  %375 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 10
  %376 = load i8*, i8** %375, align 8
  br label %.outer

377:                                              ; preds = %366
  %378 = getelementptr inbounds %struct.vlink, %struct.vlink* %.025, i64 0, i32 3
  store i32 -1, i32* %378, align 4
  br label %379

379:                                              ; preds = %377
  br label %380

.loopexit40:                                      ; preds = %360
  br label %380

380:                                              ; preds = %.loopexit40, %379
  br label %381

.loopexit:                                        ; preds = %344, %345
  br label %381

381:                                              ; preds = %.loopexit, %380
  %.not108 = icmp eq i8* %2, null
  br i1 %.not108, label %427, label %382

382:                                              ; preds = %381
  %383 = load i8, i8* %2, align 1
  %.not109 = icmp eq i8 %383, 0
  br i1 %.not109, label %427, label %384

384:                                              ; preds = %382
  %385 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %386 = load %struct.vlink*, %struct.vlink** %385, align 8
  br label %387

387:                                              ; preds = %425, %384
  %.126 = phi %struct.vlink* [ %386, %384 ], [ %.227, %425 ]
  %.not110 = icmp eq %struct.vlink* %.126, null
  br i1 %.not110, label %426, label %388

388:                                              ; preds = %387
  %389 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 2
  %390 = load i8, i8* %389, align 8
  %391 = icmp eq i8 %390, 76
  br i1 %391, label %392, label %422

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 1
  %394 = load i8*, i8** %393, align 8
  %395 = call i32 @wcmatch(i8* noundef %394, i8* noundef nonnull %2) #5
  %.not111 = icmp eq i32 %395, 0
  br i1 %.not111, label %396, label %422

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  %398 = load %struct.vlink*, %struct.vlink** %397, align 8
  %399 = icmp eq %struct.vlink* %.126, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 20
  %402 = load %struct.vlink*, %struct.vlink** %401, align 8
  %403 = getelementptr inbounds %struct.vdir, %struct.vdir* %3, i64 0, i32 5
  store %struct.vlink* %402, %struct.vlink** %403, align 8
  br label %410

404:                                              ; preds = %396
  %405 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 20
  %406 = load %struct.vlink*, %struct.vlink** %405, align 8
  %407 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 19
  %408 = load %struct.vlink*, %struct.vlink** %407, align 8
  %409 = getelementptr inbounds %struct.vlink, %struct.vlink* %408, i64 0, i32 20
  store %struct.vlink* %406, %struct.vlink** %409, align 8
  br label %410

410:                                              ; preds = %404, %400
  %411 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 20
  %412 = load %struct.vlink*, %struct.vlink** %411, align 8
  %.not112 = icmp eq %struct.vlink* %412, null
  br i1 %.not112, label %419, label %413

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 19
  %415 = load %struct.vlink*, %struct.vlink** %414, align 8
  %416 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 20
  %417 = load %struct.vlink*, %struct.vlink** %416, align 8
  %418 = getelementptr inbounds %struct.vlink, %struct.vlink* %417, i64 0, i32 19
  store %struct.vlink* %415, %struct.vlink** %418, align 8
  br label %419

419:                                              ; preds = %413, %410
  %420 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 20
  %421 = load %struct.vlink*, %struct.vlink** %420, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef nonnull %.126) #5
  br label %425

422:                                              ; preds = %392, %388
  %423 = getelementptr inbounds %struct.vlink, %struct.vlink* %.126, i64 0, i32 20
  %424 = load %struct.vlink*, %struct.vlink** %423, align 8
  br label %425

425:                                              ; preds = %422, %419
  %.227 = phi %struct.vlink* [ %424, %422 ], [ %421, %419 ]
  br label %387, !llvm.loop !9

426:                                              ; preds = %387
  br label %427

427:                                              ; preds = %426, %382, %381
  br label %428

428:                                              ; preds = %427, %342, %335, %313, %306, %226, %91
  %.0 = phi i32 [ %312, %313 ], [ 245, %306 ], [ 235, %226 ], [ 0, %335 ], [ 0, %427 ], [ 0, %342 ], [ %92, %91 ]
  ret i32 %.0
}

declare dso_local %struct.pfs_auth_info* @get_pauth(...) #1

declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

declare dso_local %struct.ptext* @ptalloc(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #3

declare dso_local %struct.ptext* @dirsend(...) #1

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local %struct.pattrib* @parse_attribute(...) #1

declare dso_local void @atfree(...) #1

declare dso_local void @vllfree(...) #1

declare dso_local %struct.vlink* @vlalloc(...) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @vlfree(...) #1

declare dso_local i8* @stcopyr(...) #1

declare dso_local i8* @unquote(...) #1

declare dso_local i32 @wcmatch(i8* noundef, i8* noundef) #1

declare dso_local i32 @vl_insert(%struct.vlink* noundef, %struct.vdir* noundef, i32 noundef) #1

declare dso_local i32 @ul_insert(%struct.vlink* noundef, %struct.vdir* noundef, %struct.vlink* noundef) #1

declare dso_local void @ptlfree(...) #1

declare dso_local i8* @stcopy(...) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @scan_error(i8* noundef) #1

declare dso_local i8* @nxtline(...) #1

declare dso_local void @ptfree(...) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
