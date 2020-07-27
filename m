Return-Path: <linux-ntb+bncBD2672OO5MFBBHER7H4AKGQEGHWKN4I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF1B22E45F
	for <lists+linux-ntb@lfdr.de>; Mon, 27 Jul 2020 05:23:09 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id l10sf85787qvw.22
        for <lists+linux-ntb@lfdr.de>; Sun, 26 Jul 2020 20:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dq8yutS6qOpaFjCBJbdxv3FGOivNk4cJmY+CYCG+8VE=;
        b=dfRj6pxtVJr+a5CX0vsjBsgmNFqLh4sSPt21j0/541jPieKXJBlhme2YKLdIPRFbyh
         ZcECRsfLbaeUuWzt8sFZ9pvfh9s+oLoLs3kGMVlZPFbIjaa+jDqviGZ3zC6Rqy3griQ3
         Nhojb4bb62sMbA8QtcbF8jPreE+gUuzZjyYIvpy6zSdTn12iRSIPh1BwqOXgZLvYilpW
         NrQix7D6ej2hJ266dy5Pud7oyrTrQyq0FchwWsKBPgF8aLCyZ/c3hViOVPiNXNXf3u/Q
         d0PkRhUtSapysLwh8k5WwiBgRu7g7NpQMoO88pkoO9Mf2Eyijf1GK0GZ3vx85tXaZRKH
         +/Iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dq8yutS6qOpaFjCBJbdxv3FGOivNk4cJmY+CYCG+8VE=;
        b=k0ui8N+B7ZEyHhzIUvvphku85uQ0peJMsxbRmYDte5MY0G289rZ0W2Dd2eko6Lmcp2
         G91Mvw/0ZPFy7fb1h80I6y5u7FSKRhCz812xqtUU3tiQfLyBHVLHY4JRbwHzaAECHLVj
         wxSwwyuQwUUgJqsc9KiTJ3McT5oJopX/aFz+ObhC3IMyn4hgeRRx7Opve3mSdvgU+3Z0
         xsvOklappBP5TtwlRS11FOya9fXenVfEIg5Pi0DCTBwsl/AV2t1CAcW8omS3YWewMFIp
         +jyTQPjJYqv9eqq29jql8eSHeytY0njvZ0rDuTFLnQhsXqqRxswVRA5zp8uel9Gq56+1
         8QRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dq8yutS6qOpaFjCBJbdxv3FGOivNk4cJmY+CYCG+8VE=;
        b=JlbU9JjRmlbSrNX6qnLEAU/WD/7D4Y1RJtwZM+crRfM5hY+H/uthVV0z/OTUQbfyzZ
         xLUWzaCkdhKLlrHb+3xIeSqhXBp5NPTu0XUxM3+NYAiwqz+N6ihVZYSoHnrAhhhnrwC6
         M0aqV13WIG2wmIbVpUL2tSj6cgjgPPtqqq2UThxTvbwsPmKHM+MFlTO+H8kcKtlU4vFl
         Lt+9ci52oWAdXrvYJatpvlA/InvYbmofasVYdOltieXgm1tBDlSzsDZ9AtnVK45plaa8
         0dS8jWm104HILDAOumLRJYoEWsCaoDJmJV0M9wGpiKFkJA9x90/voIBEZtQ/EbM2incu
         cABQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531PiDjCjRD6+jzybLOil5GtNV/he1A+jg6Cymv3IJEMCUkFOn5P
	AV+jUYHwamwxCnmpsW7vwlg=
X-Google-Smtp-Source: ABdhPJxCi4VonI9bidMiKdFp2RzQnyMbQtuX+5K5oYWNNSMfN1zG4GKCZTTIFQCTbTHFv0NDBX8YwA==
X-Received: by 2002:a37:8305:: with SMTP id f5mr21771823qkd.497.1595820188980;
        Sun, 26 Jul 2020 20:23:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:7d83:: with SMTP id y125ls7423183qkc.4.gmail; Sun, 26
 Jul 2020 20:23:08 -0700 (PDT)
X-Received: by 2002:a37:458f:: with SMTP id s137mr21212251qka.129.1595820188136;
        Sun, 26 Jul 2020 20:23:08 -0700 (PDT)
Date: Sun, 26 Jul 2020 20:23:07 -0700 (PDT)
From: =?UTF-8?B?2LLYp9mK2K8g2KfZhNi52LfZiNmK?= <azayd1616@gmail.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <02c90656-8c04-4fb7-8a34-bec7491e87ban@googlegroups.com>
In-Reply-To: <CAP7XNCwEGQ+-Q==u4yk4yvJdk1X+gsfSU6pUV_hROjmF=p-DHw@mail.gmail.com>
References: <CAP7XNCwEGQ+-Q==u4yk4yvJdk1X+gsfSU6pUV_hROjmF=p-DHw@mail.gmail.com>
Subject: Re: Hello,
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_732_263819478.1595820187348"
X-Original-Sender: azayd1616@gmail.com
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

------=_Part_732_263819478.1595820187348
Content-Type: multipart/alternative; 
	boundary="----=_Part_733_732430997.1595820187348"

------=_Part_733_732430997.1595820187348
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D8=B2=D8=A7=D9=8A=D8=AF =D8=B9=D9=88=D8=AF=D9=87 =D8=B9=D8=AA=D9=8A=D9=82 =
=D8=A7=D9=84=D8=B9=D8=B7=D9=88=D9=8A 1065628826=20
azayd1616@gmail.com
966561063734
966554288857=20

=D9=81=D9=8A =D8=A7=D9=84=D8=A7=D8=AB=D9=86=D9=8A=D9=86=D8=8C 29 =D9=8A=D9=
=88=D9=86=D9=8A=D9=88 2020 =D9=81=D9=8A =D8=AA=D9=85=D8=A7=D9=85 =D8=A7=D9=
=84=D8=B3=D8=A7=D8=B9=D8=A9 10:16:03 =D9=85 UTC+3=D8=8C =D9=83=D8=AA=D8=A8 =
mrs.victoria=20
alexander =D8=B1=D8=B3=D8=A7=D9=84=D8=A9 =D9=86=D8=B5=D9=87=D8=A7:

> Dear friend,
>
>
> I have a business container transaction what that some of( $13million=20
> dollars)
>
> I would like to discuss with you. If you are interested, please
> contact my email
>
> address (mrs.victori...@gmail.com)
>
> My WhatsApp number but only message (+19293737780 <(929)%20373-7780>)
>
> Please do not reply if you are not ready
> Thanks
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/02c90656-8c04-4fb7-8a34-bec7491e87ban%40googlegroups.com.

------=_Part_733_732430997.1595820187348
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D8=B2=D8=A7=D9=8A=D8=AF =D8=B9=D9=88=D8=AF=D9=87 =D8=B9=D8=AA=D9=8A=D9=82 =
=D8=A7=D9=84=D8=B9=D8=B7=D9=88=D9=8A 1065628826&nbsp;<div>azayd1616@gmail.c=
om</div><div>966561063734</div><div>966554288857&nbsp;<br><br></div><div cl=
ass=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">=D9=81=D9=8A =D8=
=A7=D9=84=D8=A7=D8=AB=D9=86=D9=8A=D9=86=D8=8C 29 =D9=8A=D9=88=D9=86=D9=8A=
=D9=88 2020 =D9=81=D9=8A =D8=AA=D9=85=D8=A7=D9=85 =D8=A7=D9=84=D8=B3=D8=A7=
=D8=B9=D8=A9 10:16:03 =D9=85 UTC+3=D8=8C =D9=83=D8=AA=D8=A8 mrs.victoria al=
exander =D8=B1=D8=B3=D8=A7=D9=84=D8=A9 =D9=86=D8=B5=D9=87=D8=A7:<br/></div>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-righ=
t: 1px solid rgb(204, 204, 204); padding-right: 1ex;">Dear friend,
<br>
<br>
<br>I have a business container transaction what that some of( $13million d=
ollars)
<br>
<br> I would like to discuss with you. If you are interested, please
<br>contact my email
<br>
<br>address (<a href data-email-masked rel=3D"nofollow">mrs.victori...@gmai=
l.com</a>)
<br>
<br>My WhatsApp number but only message <a href=3D"tel:(929)%20373-7780" va=
lue=3D"+19293737780" target=3D"_blank" rel=3D"nofollow">(+19293737780</a>)
<br>
<br>Please do not reply if you are not ready
<br>Thanks
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/02c90656-8c04-4fb7-8a34-bec7491e87ban%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/linux-ntb/02c90656-8c04-4fb7-8a34-bec7491e87ban%40googlegroups.com</a>.<b=
r />

------=_Part_733_732430997.1595820187348--

------=_Part_732_263819478.1595820187348--
