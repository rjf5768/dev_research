; ModuleID = './tg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@texname = external dso_local global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too many text block diversions\00", align 1
@textflg = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c".nr %d \\n(.lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".am %02d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".br\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c".di %c+\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c".nr %d \\n(.f\0A.ft %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".ft \\n(.f\0A\00", align 1
@vsize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@stynum = external dso_local global [0 x i32], align 4
@.str.8 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.v\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\\n(.s+2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".ps %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".vs %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c".if \\n(%du>\\n(.vu .sp \\n(%du-\\n(.vu\0A\00", align 1
@cll = external dso_local global [20 x [10 x i8]], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c".ll %sn\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c".ll \\n(%du*%du/%du\0A\00", align 1
@ncol = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c".if \\n(.l<\\n(%d .ll \\n(%du\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c".ll -2n\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c".in 0\0A\00", align 1
@tab = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"T}\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c".ft \\n(%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c".br\0A.ps\0A.vs\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".di\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c".nr %c| \\n(dn\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c".nr %c- \\n(dl\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c".ec \\\0A\00", align 1
@texstr = external dso_local global [0 x i8], align 1
@texct = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c".ll \\n(%du\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gettext(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 {
  %6 = alloca [256 x i8], align 16
  %7 = load i32, i32* @texname, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #3
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, i32* @textflg, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 34) #3
  store i32 1, i32* @textflg, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %20 = add nsw i32 %2, 80
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 noundef %20) #3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %25 = load i32, i32* @texname, align 4
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %25) #3
  call void @rstofill() #3
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %32, label %27

27:                                               ; preds = %16
  %28 = load i8, i8* %3, align 1
  %.not14 = icmp eq i8 %28, 0
  br i1 %.not14, label %32, label %29

29:                                               ; preds = %27
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i8* noundef nonnull %3) #3
  br label %32

32:                                               ; preds = %29, %27, %16
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %33)
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sext i32 %2 to i64
  %40 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i64 0, i64 %38, i64 %39, i64 0
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %43, label %41

41:                                               ; preds = %32
  %42 = load i8, i8* %4, align 1
  %.not13 = icmp eq i8 %42, 0
  br i1 %.not13, label %43, label %46

43:                                               ; preds = %41, %32
  br i1 true, label %44, label %64

44:                                               ; preds = %43
  %45 = load i8, i8* %40, align 4
  %.not10 = icmp eq i8 %45, 0
  br i1 %.not10, label %64, label %46

46:                                               ; preds = %44, %41
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 noundef 32) #3
  br i1 false, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8, i8* %40, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %49
  %.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %52 ], [ %40, %49 ]
  %.not11 = icmp eq i8* %4, null
  br i1 %.not11, label %59, label %54

54:                                               ; preds = %53
  %55 = load i8, i8* %4, align 1
  %.not12 = icmp eq i8 %55, 0
  br i1 %.not12, label %59, label %56

56:                                               ; preds = %54
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %4) #3
  br label %59

59:                                               ; preds = %56, %54, %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef %.0) #3
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 noundef 32, i32 noundef 32) #3
  br label %64

64:                                               ; preds = %59, %44, %43
  %65 = sext i32 %2 to i64
  %66 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %65, i64 0
  %67 = load i8, i8* %66, align 2
  %.not2 = icmp eq i8 %67, 0
  br i1 %.not2, label %73, label %68

68:                                               ; preds = %64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %70 = sext i32 %2 to i64
  %71 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %70, i64 0
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %71) #3
  br label %79

73:                                               ; preds = %64
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %75 = call i32 @ctspan(i32 noundef %1, i32 noundef %2) #3
  %76 = load i32, i32* @ncol, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 34, i32 noundef %75, i32 noundef %77) #3
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %81 = add nsw i32 %2, 80
  %82 = add nsw i32 %2, 80
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %81, i32 noundef %82) #3
  %84 = call i32 @ctype(i32 noundef %1, i32 noundef %2) #3
  %85 = icmp eq i32 %84, 97
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %88 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %87)
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %90)
  br label %92

92:                                               ; preds = %114, %89
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %94 = call i8* @gets1(i8* noundef nonnull %93) #3
  %.not3 = icmp eq i8* %94, null
  br i1 %.not3, label %.loopexit, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %97 = load i8, i8* %96, align 16
  %98 = icmp eq i8 %97, 84
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = icmp eq i8 %101, 125
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 2
  %105 = load i8, i8* %104, align 2
  %106 = sext i8 %105 to i32
  %107 = load i32, i32* @tab, align 4
  %108 = icmp eq i32 %107, %106
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %118

110:                                              ; preds = %103, %99, %95
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %112 = call i32 @match(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %111) #3
  %.not9 = icmp eq i32 %112, 0
  br i1 %.not9, label %114, label %113

113:                                              ; preds = %110
  br label %118

114:                                              ; preds = %110
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %116) #3
  br label %92, !llvm.loop !4

.loopexit:                                        ; preds = %92
  br label %118

118:                                              ; preds = %.loopexit, %113, %109
  %.not4 = icmp eq i8* %3, null
  br i1 %.not4, label %124, label %119

119:                                              ; preds = %118
  %120 = load i8, i8* %3, align 1
  %.not8 = icmp eq i8 %120, 0
  br i1 %.not8, label %124, label %121

121:                                              ; preds = %119
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 noundef 31) #3
  br label %124

124:                                              ; preds = %121, %119, %118
  %.not5 = icmp eq i8* %4, null
  br i1 %.not5, label %130, label %125

125:                                              ; preds = %124
  %126 = load i8, i8* %4, align 1
  %.not7 = icmp eq i8 %126, 0
  br i1 %.not7, label %130, label %127

127:                                              ; preds = %125
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %129 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %128)
  br label %130

130:                                              ; preds = %127, %125, %124
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %131)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %134 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %133)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %136 = load i32, i32* @texname, align 4
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 noundef %136) #3
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %139 = load i32, i32* @texname, align 4
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %138, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 noundef %139) #3
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %143)
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 2
  %146 = load i8, i8* %145, align 2
  %.not6 = icmp eq i8 %146, 0
  br i1 %.not6, label %149, label %147

147:                                              ; preds = %130
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 3
  call void @tcopy(i8* noundef %0, i8* noundef nonnull %148) #3
  br label %150

149:                                              ; preds = %130
  store i8 0, i8* %0, align 1
  br label %150

150:                                              ; preds = %149, %147
  %151 = load i32, i32* @texname, align 4
  %152 = load i32, i32* @texct, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @texct, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [0 x i8], [0 x i8]* @texstr, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  store i32 %157, i32* @texname, align 4
  ret i32 %151
}

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @rstofill() #1

declare dso_local i32 @ctspan(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i8* @gets1(i8* noundef) #1

declare dso_local i32 @match(i8* noundef, i8* noundef) #1

declare dso_local void @tcopy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @untext() #0 {
  call void @rstofill() #3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef 34) #3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
