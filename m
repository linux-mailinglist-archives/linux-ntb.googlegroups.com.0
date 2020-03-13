Return-Path: <linux-ntb+bncBDZ7FZ7G3ULBBGWCV3ZQKGQE2HFFU6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 772EA184A2D
	for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 16:05:00 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id w186sf3777833oia.13
        for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 08:05:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584111899; cv=pass;
        d=google.com; s=arc-20160816;
        b=kULrzD/ogsKqCyt9DxeLje8seikBPF2wgKdoVg0aNyKwFF5Jvy2qqhEM38xrEXvvpv
         2C9g6KuWM2GtMZbS91FF9v+vVQYX5gt3GUS8GugkFjM8W8BuaySZDSb8BFuIe0WTbFh4
         vfLz8aEnZu+agHUHnoaP03nsn6JF+fWWS35aFqDOxyAbphoKRSOOpxpMhiHFPKXxB74a
         dvzwfcbOc7ylajPniltqnfYIawT3Yu4/BelneVp1SnLIjv1u1UTKaAxfJjTvAwxERn12
         jhXMCTByhCxxZBq6rkF2SzHdRj5H1NHKNhxNQdIl6ctXuT+MYrLCQvpsCd9SOvpTsPaR
         zviQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=yRabv4aZKVnywBXK0lLVkKPCxOdN40J4/MiEEsm/n9c=;
        b=mWtymXXAXNvMGj4JtPGtH8x/WYB6ovxjTwlO4ssUKDLPdEn8FVbfXalw7MgWNZJW8A
         wb8qSgNrRvOw+YuRiI+u4qSxHy7wiEv5T+3p780EU8R8sygV//5v0uOGF/fv5BkNnyl6
         KvJ3JxrpVrG24rzRMUX/yJipByUIn1ieRhx6vdXdtMwiOCU0XSScVhYDlTZhWnZY8lMV
         PJerMkJ/qYLIxu+v/tVBpJJKgSDEMRxt03E8JNFggyU1QGGfkxAjgOBqhvxJVnhabzHz
         DfX+r3iZfFspLd9xLCn8C54Mauw28WyJ0sQ/CBHal16DMBYX2X2DajAyVPhFXg2jVy2F
         u6hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QDxQO+D2;
       spf=pass (google.com: domain of ogbonna100@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=ogbonna100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yRabv4aZKVnywBXK0lLVkKPCxOdN40J4/MiEEsm/n9c=;
        b=KMQVr98CfTRQX8IgVCMTNiPNjGDOSuM6XikyW5joMRS0USO7LgWlZlP6VzZUTkm9wR
         F1AdjLTzSmtCDmVPQxC+q4uQ4UOYhZClxbrH5AdXomImHyFddeddpWdVyq5jtZ2UruRH
         bZx5YPN9TkGMUD3UB3OL11I/yV9uOT9N2zpS8vpIHla6FC9hsdSvX9l5TiaKMJGqz/a1
         bT5uWOFSG9OK9MxaXW1BSpW151N7MEi3hCYUZcLzvtYF98PslG+goGi18z9SF8j4WVEq
         byo+rWuY2DM3kvvPDJMqQoifKjWKl8D38PCiSsPUNcL4Y5/i6TpPEb0ij4KtADCflFc3
         trkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yRabv4aZKVnywBXK0lLVkKPCxOdN40J4/MiEEsm/n9c=;
        b=YpHnVdvXrnNgWSKi7g41ZOd4hgAQnXaZaW9+0vBZjJ3bZVhURVSPmHQpQ5DhlqpLHv
         l5v5TQs3lvTZ50IGr6uJMPdKd4IUrJ5QnjgShzSSGIdYT24SDUiZMCRFpwAjFEX0I3Tc
         uT1cgmlkMfNJRqp9XP3cYxtickBWjpSC0UVOjcJivN2o8Jz7lO+RBAzkrjE/eSOHBd3d
         bCmJ/wMLz+/3AsQH4gv3S3nNCMGj+EuTzad2oWpt0FociEPWNG3Fqzy2ozZLLvrckKwb
         Bw3VGoR3HDKkqoFNNzxf3p1hUB6kmNXoVuBdiSQKG3mIcUFz2QjFwXUDCr+uUe0t6k4S
         Pwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yRabv4aZKVnywBXK0lLVkKPCxOdN40J4/MiEEsm/n9c=;
        b=EY+bqP6Y2LImMtgMC6jlCOkoWdN+jpbY4sEC9c0qxhl9nd5qqdZzeu92CiIQteLw0d
         yOpnyo1dnZMj8iheFvEr+jSw1hW4hA4Xsgh0Dg+XMOPuapGD600iAGOoWhLNt2xiZ4Sd
         +CVorwrDZTLuaErxBmtLOCaVYHa1bcWOSunyecUOJHY/0syD2A5ZW35eEhLpfba94BJK
         UYZHWzSqcYYSCIQ82kuS5fP5hO8sEX4GsmZGWZJX1hPXZ59fwTE6mPFJucBiYgFSAvNN
         HuxD3vjBddFYdi79UxZBiyTBmrMDGJYXSbwp4rCQWzZ+RXp1wOwmySzBbUzwB41uNMHB
         Krjw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ28tdtgcAvd7cLVybu+oyjkDDJNjYCHIHx0v/71PDH2W9VbYFhm
	JO7/UB1uK9xkVaGjDvW4c1E=
X-Google-Smtp-Source: ADFU+vtjiamHcq/U6KrqRtP9tftRKZC8dEHVxerz/74d/T3AqLoNNdzFO2Afuiziw2aLXrcQNXh4fA==
X-Received: by 2002:a9d:750d:: with SMTP id r13mr11527644otk.321.1584111898501;
        Fri, 13 Mar 2020 08:04:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls3018772oto.3.gmail; Fri, 13 Mar
 2020 08:04:58 -0700 (PDT)
X-Received: by 2002:a9d:4c05:: with SMTP id l5mr740117otf.371.1584111898178;
        Fri, 13 Mar 2020 08:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584111898; cv=none;
        d=google.com; s=arc-20160816;
        b=EsWH/F4MBXRlTQ8L3odBnX36JuKMG14eXOp53+5QJF8d+R0WNcpKltsw32DKylEBqR
         UNioE/i+op8xN85bjA/m7/AUnzDYTQSY+wgmwg29acyys6rM+ECZVFFrnE0CNxNgZy2I
         KUlsMEvFFbXPYMPHBY8ogistx2jlbyTjmf9bY7nC44vOE2gfNp6Gycnufnkm4P9rhtrP
         tFTXC9u9L4GSQK93zZzNsakg4neCUw2BHRsccmcOOG7ZYY6lrqDpVKqGRT7wlqmUkZcf
         TlcuwdaNzrMNTb3NYQ9fIHwGLVV9eQZqZ5uYxGf8Sgni+eg1ch1uB7jL3QIX7BsR0jDr
         SN1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=j2QEI9qhE499vmlTCneDpKaQfUXMxdNli1p0sYnTZJ8=;
        b=Yzk7KrGVdxO8wTGogWldLM+1PfkeDDFdmKRI3VHkW1TeFmquiGwRDP5FX6A3Jam4WN
         8l1gr3ZCUzeB3wAGWH1QxSmBEey5Oblz77OUNyjP1WgdNSZUsQKrjZdelrO9yLM2lHa/
         KsIpkl3f7ovU1/FcUeqgvLYa98J5Q58ziKATp3+ipcfvh6sQ8Z05YA9BeY+4vDEsf6g2
         R1T68aHuO0sv8EhdoZmTEVtgvADVgAzQwfBo1aH5hzbuv4tnNmIYs/uNmc1FtaTGevyg
         4gK51plFNCQ91JPvOoAmHIRbwAf6nVr1VEdyCHG9ySvG7NXVNmwGG/jTQTspgnGsp2F+
         6NuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QDxQO+D2;
       spf=pass (google.com: domain of ogbonna100@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=ogbonna100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id v19si609044oth.1.2020.03.13.08.04.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ogbonna100@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id x1so8130155qkx.10
        for <linux-ntb@googlegroups.com>; Fri, 13 Mar 2020 08:04:58 -0700 (PDT)
X-Received: by 2002:a05:620a:110c:: with SMTP id o12mr13231329qkk.87.1584111897959;
 Fri, 13 Mar 2020 08:04:57 -0700 (PDT)
MIME-Version: 1.0
Reply-To: atohmk225@gmail.com
From: Komlaw Louis Atohm <ogbonna100@gmail.com>
Date: Fri, 13 Mar 2020 16:04:46 +0100
Message-ID: <CA+YdZB2exLknazr1-jME-r-zFK=-KOfrYB2XQJPHo-9C+z_c0g@mail.gmail.com>
Subject: =?UTF-8?B?15TXkNedINeQ16rXlCDXoteT15nXmdefINee16nXqtee16kg15HXk9eV15Ai15wg15bXlA==?=
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000f660a405a0bdca4b"
X-Original-Sender: ogbonna100@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QDxQO+D2;       spf=pass
 (google.com: domain of ogbonna100@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=ogbonna100@gmail.com;       dmarc=pass
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

--000000000000f660a405a0bdca4b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

157XlCDXqdec15XXnteaLA0KDQrXqNenINeo15XXpteUINec15DXqdeoINeQ150g15DXqteUINei
15PXmdeZ158g157Xqdeq157XqSDXkdeb16rXldeR16og15PXldeQItecINeW15U/INeQ150g15vX
nywg15DXoNeQINeU16nXkSDXnNeT15XXkNeoDQrXlNeQ15fXqNeV158g16nXqdec15fXqteZINeQ
15zXmdeaLCDXoNeV16nXkCDXl9ep15XXkSDXqdeQ16DXmSDXqNeV16bXlCDXnNeT15XXnyDXkNeq
15ouDQoNCtee16bXpNeUINec16nXnteV16Ig157XnteaLg0KDQrXotedINee16nXkNec15XXqteZ
15og15TXmNeV15HXldeqINeR15nXldeq16ghDQoNCg0KQXRvaCBMb3VpcyBLb21sYWgNCg0KDQoN
Cg0KDQpIb3cgYXJlIHlvdSwNCg0KIEp1c3Qgd2FudCB0byBjb25maXJtIGlmICB5b3UgU3RpbGwg
dXNpbmcgdGhpcyBlbWFpbCBhZGRyZXNzPyBJZiBzbywgcGxlYXNlDQpyZXBseSB0byBteSBsYXN0
IG1haWwgaSBzZW50IHlvdSwgYW4gaW1wb3J0YW50IGlzc3VlIEkgd291bGQgbGlrZSB0bw0KZGlz
Y3VzcyB3aXRoIHlvdS4NCg0KTG9va2luZyBmb3J3YXJkIHRvIGhlYXJpbmcgZnJvbSB5b3UuDQoN
CiBXaXRoIHlvdXIgYmVzdCB3aXNoZXMhDQoNCkF0b2ggTG91aXMgS29tbGFoDQoNCi0tIApZb3Ug
cmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBH
b29nbGUgR3JvdXBzICJsaW51eC1udGIiIGdyb3VwLgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMg
Z3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRv
IGxpbnV4LW50Yit1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlz
Y3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dp
ZC9saW51eC1udGIvQ0ElMkJZZFpCMmV4TGtuYXpyMS1qTUUtci16RkslM0QtS09mcllCMlhRSlBI
by05QyUyQnpfYzBnJTQwbWFpbC5nbWFpbC5jb20uCg==
--000000000000f660a405a0bdca4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-tw-ta" id=3D"gma=
il-tw-target-text" style=3D"text-align:right" dir=3D"rtl"><span lang=3D"iw"=
>=D7=9E=D7=94 =D7=A9=D7=9C=D7=95=D7=9E=D7=9A,

=D7=A8=D7=A7 =D7=A8=D7=95=D7=A6=D7=94 =D7=9C=D7=90=D7=A9=D7=A8 =D7=90=D7=9D=
 =D7=90=D7=AA=D7=94 =D7=A2=D7=93=D7=99=D7=99=D7=9F =D7=9E=D7=A9=D7=AA=D7=9E=
=D7=A9 =D7=91=D7=9B=D7=AA=D7=95=D7=91=D7=AA =D7=93=D7=95=D7=90&quot;=D7=9C =
=D7=96=D7=95? =D7=90=D7=9D =D7=9B=D7=9F, =D7=90=D7=A0=D7=90 =D7=94=D7=A9=D7=
=91 =D7=9C=D7=93=D7=95=D7=90=D7=A8 =D7=94=D7=90=D7=97=D7=A8=D7=95=D7=9F =D7=
=A9=D7=A9=D7=9C=D7=97=D7=AA=D7=99 =D7=90=D7=9C=D7=99=D7=9A, =D7=A0=D7=95=D7=
=A9=D7=90 =D7=97=D7=A9=D7=95=D7=91 =D7=A9=D7=90=D7=A0=D7=99 =D7=A8=D7=95=D7=
=A6=D7=94 =D7=9C=D7=93=D7=95=D7=9F =D7=90=D7=AA=D7=9A.

=D7=9E=D7=A6=D7=A4=D7=94 =D7=9C=D7=A9=D7=9E=D7=95=D7=A2 =D7=9E=D7=9E=D7=9A.

=D7=A2=D7=9D =D7=9E=D7=A9=D7=90=D7=9C=D7=95=D7=AA=D7=99=D7=9A =D7=94=D7=98=
=D7=95=D7=91=D7=95=D7=AA =D7=91=D7=99=D7=95=D7=AA=D7=A8!


Atoh Louis Komlah

</span></pre>

<div><br></div><div><br></div><div><br></div><div>How are you,<br><br>=C2=
=A0Just want to confirm if =C2=A0you Still using this email address? If so,=
 please reply to my last mail i sent you, an important issue I would like t=
o discuss with you. <br><br>Looking forward to hearing from you.<br><br>=C2=
=A0With your best wishes!<br><br>Atoh Louis Komlah</div>





















</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CA%2BYdZB2exLknazr1-jME-r-zFK%3D-KOfrYB2XQJPHo-9C%2Bz_=
c0g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/d/msgid/linux-ntb/CA%2BYdZB2exLknazr1-jME-r-zFK%3D-KOfrYB2XQJPH=
o-9C%2Bz_c0g%40mail.gmail.com</a>.<br />

--000000000000f660a405a0bdca4b--
