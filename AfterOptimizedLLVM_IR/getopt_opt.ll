; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/getopt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unix_smail_opterr = dso_local global i32 1, align 4
@unix_smail_optind = dso_local global i32 1, align 4
@unix_smail_getopt.sp = internal global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@unix_smail_optopt = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@optarg = dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unix_smail_getopt(i32 noundef %0, i8** noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca [2 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @unix_smail_getopt.sp, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %54

14:                                               ; preds = %3
  %15 = load i32, i32* @unix_smail_optind, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* @unix_smail_optind, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load i8**, i8*** %6, align 8
  %30 = load i32, i32* @unix_smail_optind, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28, %18, %14
  store i32 -1, i32* %4, align 4
  br label %193

39:                                               ; preds = %28
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* @unix_smail_optind, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #3
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @unix_smail_optind, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @unix_smail_optind, align 4
  store i32 -1, i32* %4, align 4
  br label %193

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* @unix_smail_optind, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @unix_smail_getopt.sp, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  store i32 %64, i32* %8, align 4
  store i32 %64, i32* @unix_smail_optopt, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %72, label %67

67:                                               ; preds = %54
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @strchr(i8* noundef %68, i32 noundef %69) #3
  store i8* %70, i8** %9, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %109

72:                                               ; preds = %67, %54
  %73 = load i32, i32* @unix_smail_opterr, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %77, i8* %78, align 1
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 10, i8* %79, align 1
  %80 = load i8**, i8*** %6, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8**, i8*** %6, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* noundef %85) #3
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef %82, i32 noundef %87)
  %89 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 20)
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %91 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef %90, i32 noundef 2)
  br label %92

92:                                               ; preds = %75, %72
  %93 = load i8**, i8*** %6, align 8
  %94 = load i32, i32* @unix_smail_optind, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @unix_smail_getopt.sp, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @unix_smail_getopt.sp, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* @unix_smail_optind, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @unix_smail_optind, align 4
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %108

108:                                              ; preds = %105, %92
  store i32 63, i32* %4, align 4
  br label %193

109:                                              ; preds = %67
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %174

115:                                              ; preds = %109
  %116 = load i8**, i8*** %6, align 8
  %117 = load i32, i32* @unix_smail_optind, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @unix_smail_getopt.sp, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %115
  %129 = load i8**, i8*** %6, align 8
  %130 = load i32, i32* @unix_smail_optind, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @unix_smail_optind, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @unix_smail_getopt.sp, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8* %138, i8** @optarg, align 8
  br label %173

139:                                              ; preds = %115
  %140 = load i32, i32* @unix_smail_optind, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @unix_smail_optind, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load i32, i32* @unix_smail_opterr, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load i32, i32* %8, align 4
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %149, i8* %150, align 1
  %151 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 10, i8* %151, align 1
  %152 = load i8**, i8*** %6, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** %6, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strlen(i8* noundef %157) #3
  %159 = trunc i64 %158 to i32
  %160 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef %154, i32 noundef %159)
  %161 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33)
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %163 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef %162, i32 noundef 2)
  br label %164

164:                                              ; preds = %147, %144
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  store i32 63, i32* %4, align 4
  br label %193

165:                                              ; preds = %139
  %166 = load i8**, i8*** %6, align 8
  %167 = load i32, i32* @unix_smail_optind, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @unix_smail_optind, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8*, i8** %166, i64 %169
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** @optarg, align 8
  br label %172

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %128
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %191

174:                                              ; preds = %109
  %175 = load i8**, i8*** %6, align 8
  %176 = load i32, i32* @unix_smail_optind, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* @unix_smail_getopt.sp, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @unix_smail_getopt.sp, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %174
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  %188 = load i32, i32* @unix_smail_optind, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @unix_smail_optind, align 4
  br label %190

190:                                              ; preds = %187, %174
  store i8* null, i8** @optarg, align 8
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %164, %108, %49, %38
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @write(...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
