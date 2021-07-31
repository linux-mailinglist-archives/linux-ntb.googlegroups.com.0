Return-Path: <linux-ntb+bncBCS7LS6WRQIBBBNES2EAMGQE7BS324I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ECF3DC797
	for <lists+linux-ntb@lfdr.de>; Sat, 31 Jul 2021 20:10:14 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id z9-20020a4ade490000b029024c2413e5c6sf5150555oot.1
        for <lists+linux-ntb@lfdr.de>; Sat, 31 Jul 2021 11:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627755013; cv=pass;
        d=google.com; s=arc-20160816;
        b=MdG0oVwp8/5H83Fdqnl5th2ChzQyQ7XNlIaz9echIRr7QEcgVXktQSjh0QpbI4yIpy
         84vz3dDDizD9m20f0EZmcFDgxpIrUgNax6i6OQDDkhMmrV/K5KunUodY6MPhA+flyYfZ
         yicnGdOHpRJ7KDIWrEsU4vGBNGuqHcEAPeBILG2ITX06+P7H1nSgSup+GFpQmDOoQVN4
         /NJ8qsBHHZQ+trFAnfwhLFm1TQGh7GedmbYuUBv0QHrnbDa6G9L9nBHoKRGsckfDSwL0
         fQ/zL/+VKdN//tNVuu9dYewC7kYllvsdUoI4+jAxmg52jfUJaJrCcpv6I/92xG8re5yc
         T4BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=V5DNxKH0zjAyFU38bf2BfelAmx7iStr38jnZStxNqUs=;
        b=gee9AE34S4WxSlII1+xRG9E49PJUT7/ZmgzfzMv/tDC+vkJysTI0P6oqFglH3v4zIr
         K9SDnSL/4CIh8F54WFfQxVj3zC1PxY+cyIo4ebtRvXwuz4s41Pm2+1yDyJjFFdfu2ln+
         oD26Dzd0D2FK305Wjdl0MLM64DKaJwbEltb630q/T+J+QhfiwTXM8/9TQtHOXL+6ciTB
         l+EySM2nMdnoG1l6fEI+8Ayo+5gtjtVb2Nd83AHx8rmMT173JnnwhGIoF0FlGqh1gKBw
         3r0te7pU9tinBzcAwTBQv3pRpIZmSi1wIMWXYuVuxBZxVYfrGZG8yqw8aiZxF/MM4zlQ
         318Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qI0SYvOW;
       spf=pass (google.com: domain of pacomeamegan@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=pacomeamegan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V5DNxKH0zjAyFU38bf2BfelAmx7iStr38jnZStxNqUs=;
        b=OYbcD0ZHi0AaW2+oxrUvIoAEzS3RwFqFotul/2h6uql5U55iEjbIPxfP7GudjZu0uG
         GDOOGtztORwqzlSYmedTgjBILHiK7hOCEr55pnieVJAAtxxd5+v+WPeWAQfkFba1usNV
         y9UeQOv1Ds5K9PwlBP3ipZs/eYXK40FBU5PATE62HHPfkPrI4F8zQMwHdeubam7937AX
         W0Dkl5hXNr3as7taFUP+0DIsrr9+1MyGROYXmyr4OMyJIwlqAVY8KmdRvSYPq308g90y
         fJI9F8f8zq3JY6/0O5O3DZkXG7yfX494SAWq0OnhZAQrz/NNUelO1QkokME3GH9sS5Si
         LB2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V5DNxKH0zjAyFU38bf2BfelAmx7iStr38jnZStxNqUs=;
        b=mRlldq4n6lKRl7o10PT1+/vHmKnPxh+bdnRXnEvUo7A9kJ7WRG4XTpTRWGLnEzTjwU
         oODoLsM7JR+trfKgVmQPLUvA6niqQrLDK+XR+ge0X+fcyON3n4i5PNW6aBnbGYcEEbCB
         i4CKqiNQV7Du2wOQ8g+NvDsxqyo3M6ug4s4+SG5p9lwiy/txvo6Jc23UG5tHl0dZiL6G
         eTDpXR7cRqxcfcUl3wb+z4BPuGhIq+slnDgnuJ/SuBpPH+TZ74erDequsvaCjG1gwdM0
         QOzKfEqosO0ruc1TpFLAsiEdCrBMxlbbhEIzb81x8hj4/rfXwxxYC1Ujd55mKwqHyfg6
         +K6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V5DNxKH0zjAyFU38bf2BfelAmx7iStr38jnZStxNqUs=;
        b=qq5i2vtrR0VaMg5T4kBtEfsjpufQhTHRije5HNNVvd+k0AKUqoZvDbcvA8mM0kdOk0
         rnAQYdFOWmWp0Jl/pJP/KVq7d9bHbz2pKOkfKfSc5j85WmeJaXUmG4JEd8jmSG0npyo6
         I/QqLeCZ39Aqj9mbuE07G1iAcZLyvNTPwV6iO5nQQsKSCP+xmpMGVpL72zNJqK4NKF3i
         n5qqUlFLzmdXIeZAfS78wqhMwBofnJA7pRhIWUXG0i1Z1cm290osf0yTJY6Sxv1rBaVB
         Kj/V6LqjaZUZgPWCiNQukSt0Rby4vP61b18bhLvPXBH2Z31MFjjAJOE7gsx5gGl7pLKi
         W7WA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533nurjSvwCec5SnyWUyOdzRcNCZ4H1udZve5aNSD5iMD92Mxflt
	hKbHRuWLLgj+C2QzziNebZ8=
X-Google-Smtp-Source: ABdhPJwTzS/ebUDYUGALh/SqFhTV8M4fP0FQbkarbyjcJn6QZzqOy5fhbFJhLIb12lxMnv+CFKcLDA==
X-Received: by 2002:a05:6808:2d2:: with SMTP id a18mr6057641oid.106.1627755013221;
        Sat, 31 Jul 2021 11:10:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1403:: with SMTP id v3ls1213924otp.7.gmail; Sat, 31
 Jul 2021 11:10:12 -0700 (PDT)
X-Received: by 2002:a9d:74c1:: with SMTP id a1mr6542502otl.129.1627755012899;
        Sat, 31 Jul 2021 11:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627755012; cv=none;
        d=google.com; s=arc-20160816;
        b=f2Osk0pEIuUW5isP6wlRqc4h2pfofmwSFvP8wcexEjExoRIiAvqmHUW97yyUaB3Gkp
         Z7fDaZ/mp7HGwD1B/0mMYOJT3RU4qSFH7TZgiR3obEKuO/R6P0BSJ1fVof3iJIy8sg/j
         m9fd5Cl14O6hk5q6YxA/6cRF1GkcUjCIb3Y0K5MhZDkeZ1MOaXfQC/J8kP+dU4B2xHkL
         hPss9TqPU1UHOs6ZCWAWYNnrz70LJVnn0jkdnaO/4Q74jrPtkFnmH4CxgCS/kGqL+iTz
         eQH/EigPZQwAUCD24LSp36j7yonWbqjHc3TDlHV5d3p19YPhgkRJsk091Ocnir74dGGi
         fJCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YbrFcM7HPSkQMOG6132rZuGH17DXfPyZ0tfD3Ghn2XQ=;
        b=ac6p/eT6H0CwH03WJR1SAoh5c3elpYndmRnlwRwmQUgI+Xwi6nfTNXAe0po4Oucx6K
         zLqeT7wZ6PQa0M3EWdDI2YLLluREVxHtoGcA9pjEBqJWBSc5PP93Fp3ljkcCQmOMxP6/
         /U9g0DuRpBzPAWwvXxJtpoLEZqY4ORrxpfQ7pabZvJwZFOuNJlZWVOqKCmiLHrXlDhuB
         VF9vxHGzZKidqV31HPnTysB+lGouU+dFqNrsQU5daMBYNov/suRF43HfW0CloZVrOHB6
         RQGBV3pCV1zgsjTRgIf4EO3zkKGZpiSa8qJ9vvILqKyQhc9UbQ8V0ZvRFF50mUPOYEFn
         9Ukg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qI0SYvOW;
       spf=pass (google.com: domain of pacomeamegan@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=pacomeamegan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id l23si285569otb.2.2021.07.31.11.10.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 11:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of pacomeamegan@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id m193so6983775ybf.9
        for <linux-ntb@googlegroups.com>; Sat, 31 Jul 2021 11:10:12 -0700 (PDT)
X-Received: by 2002:a25:f80a:: with SMTP id u10mr10646753ybd.391.1627755012689;
 Sat, 31 Jul 2021 11:10:12 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Ritterhouse <sarahriterhouse01@gmail.com>
Date: Sat, 31 Jul 2021 18:09:56 +0000
Message-ID: <CAOPTZN7VRDDPdEiUT+P38B-7MZF4m6sFddEipN5fuTyPv=h8=g@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000005013e105c86f3fb8"
X-Original-Sender: sarahriterhouse01@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qI0SYvOW;       spf=pass
 (google.com: domain of pacomeamegan@gmail.com designates 2607:f8b0:4864:20::b2d
 as permitted sender) smtp.mailfrom=pacomeamegan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

--0000000000005013e105c86f3fb8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

--=20
=E4=BD=A0=E5=A5=BD=EF=BC=8C=E4=BD=A0=E6=94=B6=E5=88=B0=E6=88=91=E7=9A=84=E6=
=B6=88=E6=81=AF=E4=BA=86=E5=90=97=EF=BC=9F

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAOPTZN7VRDDPdEiUT%2BP38B-7MZF4m6sFddEipN5fuTyPv%3Dh8%3Dg%40mail.=
gmail.com.

--0000000000005013e105c86f3fb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E4=BD=A0=
=E5=A5=BD=EF=BC=8C=E4=BD=A0=E6=94=B6=E5=88=B0=E6=88=91=E7=9A=84=E6=B6=88=E6=
=81=AF=E4=BA=86=E5=90=97=EF=BC=9F<br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAOPTZN7VRDDPdEiUT%2BP38B-7MZF4m6sFddEipN5fuTyPv%3Dh8%=
3Dg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/d/msgid/linux-ntb/CAOPTZN7VRDDPdEiUT%2BP38B-7MZF4m6sFddEipN5fuT=
yPv%3Dh8%3Dg%40mail.gmail.com</a>.<br />

--0000000000005013e105c86f3fb8--
