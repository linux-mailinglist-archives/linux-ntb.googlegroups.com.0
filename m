Return-Path: <linux-ntb+bncBAABBWETUHTQKGQEMVNHBII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 131F529F4E
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 21:45:29 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id o6sf4914099wrw.16
        for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 12:45:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558727128; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqq1OcEBaViSeYspPrZrccuR5z9Y7gPocpNybrvlwpty2n6Sa2WaqR61AyEiC/Dqbh
         c4prrOpMBJD+aSpaqkVvAlw9MXqh36TPtra2/ZMwhWhBvdC1DNwgkUI+AZ0p4+8NqcV7
         FE5LITtrvh3NMvHmvSCFfdlSjEDPAeceZ7H24Uf8W6EDbgUz14aEw+kA6aIi3ZhNkZ41
         cdVBCFYMJaxXevPwxA9Z0+BBy6//4kJbFzzUeOkxrCP9t+MLIyObaxpaWsK82Q1WGHbP
         kXPmfui9MknNXcGG5CqvMkOUNbjG0LjE0PQTtMXsJpFImpM8K4PTjTkTlMmJ8hi5CUmE
         eNNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:message-id:reply-to
         :from:date:dkim-filter:sender:dkim-signature;
        bh=pOswNFrtJGXWEBjoQ7HeoY+5QVCGbq9RNpfhyUOGrXI=;
        b=C4CJ3n7BwNzUn8cKCNp50ZMthsosK1MfLLn9tIIsImPsDx5v6iVmD4kDu/eioFtruf
         v4uUQ1sCrb47e1nQ4Mh83ilIkYSWygV3pYJ7BPYTNf2vQVjY5ROHo0aXTuYAjQjKwFaH
         iseu9oRfIa4vzGKj8ct2D7kkZ/DMj6NEeikHkJ4lYwwnF6svHSnYyZNt2/sfvF8gIFp/
         ZBUx9EisHdEjU8bGEMCz60n5DJCONiNwibB8NceFyNp1yhjAqV89YkY2Q9A/N83sjwhw
         Pt4JDCWmYsikhtJKkYRpujge3cB845kZnV9R+oOXGf59rstIi/zIYbpTt96ForYjpKsX
         LSDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@ntymail.com header.s=3D29A920-1D11-11E6-B680-91943B2FE0E3 header.b=VaOfxded;
       spf=pass (google.com: domain of ritaboris06@ntymail.com designates 185.175.7.66 as permitted sender) smtp.mailfrom=ritaboris06@ntymail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:from:reply-to:message-id:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pOswNFrtJGXWEBjoQ7HeoY+5QVCGbq9RNpfhyUOGrXI=;
        b=WGPoaX5Ja9iNpe/wfE0pgeC9RjZ3laMK8VqRNnd3UqNm61q3KLCgd0dAv+S8l8nJVU
         34VAgMUA7MGa83FuWY+tSsJDobPAs867peX3ox9SaRjV4mGV2ab3dWpzI72UD3ijvy1Z
         ou8cJIEh3N2rgk+kNAg+A4FB9ASqWBGD2PH0tJ+WFxqzKokjzNiDiNX8UnlJvrjzR7gG
         RalV4X8GFUaLOl0UXyR9MZUvxlJ1wm5Tbn5Iy6AKaP6K/DdjNxeJDuLUScjJcWCdt3ac
         5vnqyiLzVzOvqu5/ewyG6998du/JtWD/RzYJAnTLeVfnMPtDfpGaNZCu+Q7OC6881bII
         xSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:reply-to:message-id
         :subject:mime-version:content-transfer-encoding:thread-topic
         :thread-index:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pOswNFrtJGXWEBjoQ7HeoY+5QVCGbq9RNpfhyUOGrXI=;
        b=jNA4sBlJVg5nBehOM4LHNt7yUGvMD8l6Vdvc/1lQglWl0SAxKEEhqA8DzbEOo7yQ5u
         pIvSA3DiOUStnL/vCwrBXmiO2f16hB4f+DswPYk33WwcWvJzAF0h/VdPuu/hN3qWlsK4
         6XaIILaRBhONQadhZHDsfVcxdTQ5pht3ABc7fCqByb/9okldm9zyb73Yq6AfFun7LKrm
         UAht8zALbOHM59JN7LLICLyDplS3MlZwXbegKRoN94dPeID7e3/qGapzXT2W7MkeQtG9
         S6XqDpCiFdTd9Yl5MHVoC8QNasXbsKXhsTeCnR2waFoUD6tGcBrk3/0Kd3GRNFKQUenK
         RO+w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV4NHWbiBtuDlY/sITqyRZOEp2JP14PG7UzMRR+omN0dl7ajUIp
	pVPYeCRNmzLsorxwD57C3ZQ=
X-Google-Smtp-Source: APXvYqywo4I0zmdAOEKMYE/UiplIoMzfo6x+qVrwhusq51Hb3abBVpUZWuXlcSMKVoAraXgffta1bQ==
X-Received: by 2002:adf:d84e:: with SMTP id k14mr7922264wrl.76.1558727128694;
        Fri, 24 May 2019 12:45:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls2602350wru.2.gmail; Fri, 24 May
 2019 12:45:28 -0700 (PDT)
X-Received: by 2002:a5d:6243:: with SMTP id m3mr11978581wrv.41.1558727128326;
        Fri, 24 May 2019 12:45:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558727128; cv=none;
        d=google.com; s=arc-20160816;
        b=To5+a7OWZ/B/+coSIDjznc4QAhMTx9tJuvuWnGgc2hvUERjmUzTyvodU/OI16tlOaY
         lNovYd/iGXUQKZV9b4Ye32eN68w92IJ48UgZcwsZA/HMyuB17IxxIrUfs28nxB6Ua7KL
         +NI+hSDYWlrD1NlhVN8DI6vPyubx3jrZ/5sZf80BeAVnY5DhVXdTquBJhsrDWF1njkkB
         POjXbtRyD6TubinWtrrli9v1mmEC38+lB6wu7j8Uu0TO2uT1lfGDv/s3PsEeMA/0viqL
         cZ7DTpl9aTxhp0nuqUs2l89a5iCcLCyqeWbEPGq9k9HLnaOJpnuMCPCwA4nlfaoAlwwA
         IRzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:message-id:reply-to:from:date:dkim-signature:dkim-filter;
        bh=VrEdKPY3HAzGMQdTTYOAHK4/gYtC6HbkgjTcEKutkGE=;
        b=SzG5xUtfmpetmcKTjMknNg5IEHheNX39OiPcND7MLEd0iF13IdsWBxEyc+gfVsFfys
         J6/f2hmZWOBYzMU/O7RrI1r5z0jyUsv2CZRW6jw2CY4IjcCRMsP3IDeDm09h3qLss4pd
         A38BGkgFiiyr50dHEvNJxmVDd19rE7uLOEJvsRzAwO46aScRRYJA8juL4fhMTqpMj2ao
         rUUSATgWGW+zO2W66mPKP+2O7mhlNtzF7UXtilLXtTSXzhiyy30TMPRuCijlNKiKe4QV
         LiQ8jQhVgUNLhANuxJQKzAFPz7o6B6T87INxuuZ1H1bzXEuCerLAVjNIaX1NKSI3pZuu
         6amg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@ntymail.com header.s=3D29A920-1D11-11E6-B680-91943B2FE0E3 header.b=VaOfxded;
       spf=pass (google.com: domain of ritaboris06@ntymail.com designates 185.175.7.66 as permitted sender) smtp.mailfrom=ritaboris06@ntymail.com
Received: from webmail.ntymail.com (webmail.ntymail.com. [185.175.7.66])
        by gmr-mx.google.com with ESMTPS id y139si153114wmd.0.2019.05.24.12.45.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 12:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ritaboris06@ntymail.com designates 185.175.7.66 as permitted sender) client-ip=185.175.7.66;
Received: from localhost (localhost [127.0.0.1])
	by webmail.ntymail.com (Postfix) with ESMTP id B64AB66F6C;
	Fri, 24 May 2019 21:45:27 +0200 (CEST)
Received: from webmail.ntymail.com ([127.0.0.1])
	by localhost (nmmta1.newmanity.corp [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id wFeex5jHGBYN; Fri, 24 May 2019 21:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by webmail.ntymail.com (Postfix) with ESMTP id CFA7A66FA1;
	Fri, 24 May 2019 21:45:24 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.9.2 webmail.ntymail.com CFA7A66FA1
X-Virus-Scanned: amavisd-new at newmanity.corp
Received: from webmail.ntymail.com ([127.0.0.1])
	by localhost (nmmta1.newmanity.corp [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id E39G0IBdyhi0; Fri, 24 May 2019 21:45:24 +0200 (CEST)
Received: from nmstorefo1.newmanity.corp (nmstore2.newmanity.corp [10.50.1.51])
	by webmail.ntymail.com (Postfix) with ESMTP id 487CA66F6C;
	Fri, 24 May 2019 21:45:23 +0200 (CEST)
Date: Fri, 24 May 2019 21:45:23 +0200 (CEST)
From: Flora Michael <ritaboris06@ntymail.com>
Reply-To: "fm332558@gmail.com" <fm332558@gmail.com>
Message-ID: <698431760.29478759.1558727123226.JavaMail.zimbra@ntymail.com>
Subject: Bitte hilf mir, diesen Traum zu verwirklichen.
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [41.79.219.201]
X-Mailer: Zimbra 8.6.0_GA_1194 (ZimbraWebClient - GC74 (Win)/8.6.0_GA_1194)
Thread-Topic: Bitte hilf mir, diesen Traum zu verwirklichen.
Thread-Index: bB1edSh2IsFQLyQ1A2IRZ7ozJEYBDw==
X-Original-Sender: ritaboris06@ntymail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=temperror (no
 key for signature) header.i=@ntymail.com header.s=3D29A920-1D11-11E6-B680-91943B2FE0E3
 header.b=VaOfxded;       spf=pass (google.com: domain of ritaboris06@ntymail.com
 designates 185.175.7.66 as permitted sender) smtp.mailfrom=ritaboris06@ntymail.com
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

Bitte hilf mir, diesen Traum zu verwirklichen.

Ich bin Frau Flora Michael aus Kanada. Ich bin mit Herrn Kellen Michael ver=
heiratet, der neun Jahre lang mit der kanadischen Botschaft hier in der Rep=
ublik Benin gearbeitet hat, bevor er 2015 starb. Wir waren elf Jahre ohne K=
ind verheiratet. Er starb nach kurzer Krankheit, die nur vier Tage dauerte.=
 Vor seinem Tod wurden wir beide wiedergeboren.

Seit seinem Tod habe ich mich entschlossen, weder wieder zu heiraten noch e=
in Kind au=C3=9Ferhalb meines Ehehauses zu bekommen, gegen das sich die Bib=
el richtet. Als mein verstorbener Ehemann lebte, hinterlegte er die Summe v=
on vier Millionen Siebenhunderttausend US-Dollar (7,5 Millionen USD) in ein=
er Bank hier in der Hauptstadt der Benin-Republik Porto Novo. Derzeit ist d=
ieses Geld noch bei der Bank hier in der Hauptstadt der beninischen Republi=
k Porto Novo.

Vor kurzem, nach meiner Krankheit, sagte mir mein Arzt, ich w=C3=BCrde die =
n=C3=A4chsten acht Monate wegen Krebserkrankungen nicht durchhalten, sagte =
ich, dass sich diese Art von Knochenkrebs in den n=C3=A4chsten acht Monaten=
 nicht ausbreiten wird und ich nicht mehr lebe. Was mich aber am meisten st=
=C3=B6rt, ist meine Schlaganfallkrankheit.

Nachdem ich meinen Zustand gekannt hatte, entschied ich mich, diesen Fonds =
einer Kirche, einer Organisation oder einer Einzelperson zu spenden, die di=
eses Geld auf die Art und Weise verwenden wird, die ich hier erteile. Ich m=
=C3=B6chte eine Kirche, Organisation oder Einzelperson, die diesen Fonds f=
=C3=BCr Waisenh=C3=A4user, Witwen wie mich, die Armen und Bed=C3=BCrftigen =
und auch f=C3=BCr die Verbreitung des Wortes Gottes und f=C3=BCr die Erhalt=
ung des Hauses Gottes einsetzen wird.

Die Bibel lie=C3=9F uns verstehen, dass "gesegnet die Hand ist, die gibt". =
Ich habe diese Entscheidung getroffen, weil ich kein Kind habe, das dieses =
Geld erben wird, und die Verwandten meines Mannes nicht Christen sind und i=
ch nicht m=C3=B6chte, dass die Bem=C3=BChungen meines Mannes von Ungl=C3=A4=
ubigen genutzt werden. Ich m=C3=B6chte keine Situation, in der dieses Geld =
auf gottlose Weise verwendet wird. Deshalb treffe ich diese Entscheidung.

Ich habe keine Angst vor dem Tod, daher wei=C3=9F ich, wohin ich gehen soll=
. Ich wei=C3=9F, ich werde in der Brust des Herrn sein. In Exodus 14 VS 14 =
hei=C3=9Ft es, dass der Herr meinen Fall bek=C3=A4mpfen wird und ich werde =
meine Ruhe bewahren. "Ich brauche in dieser Hinsicht keine telefonische Kom=
munikation wegen meiner Gesundheit und daher der Anwesenheit der Verwandten=
 meines Mannes immer um mich herum Ich m=C3=B6chte, dass die Verwandten mei=
nes Mannes von dieser Entwicklung erfahren. Mit Gott ist alles m=C3=B6glich=
.

Sobald ich Ihre Antwort erhalte, gebe8 ich Ihnen die Kontaktperson der Bank=
, bei der die Gelder meines verstorbenen Mannes eingezahlt wurden, damit Si=
e sie direkt kontaktieren k=C3=B6nnen. Ich sende Ihnen auch ein Erm=C3=A4ch=
tigungsschreiben, das Sie als gegenw=C3=A4rtigen Beg=C3=BCnstigten dieses F=
onds beweist. Ich m=C3=B6chte, dass Sie und die Kirche immer f=C3=BCr mich =
beten, weil der Herr mein Hirte ist. Mein Gl=C3=BCck ist, dass ich ein Lebe=
n eines w=C3=BCrdigen Christen gelebt habe.

Wer dem Herrn dienen will, muss ihm in Geist und Wahrheit dienen. Sei bitte=
 immer ein Leben lang im Gebet. Jede Verz=C3=B6gerung in Ihrer Antwort gibt=
 mir Raum, um eine andere Person f=C3=BCr diesen Zweck zu finden. Bitte ver=
sichern Sie mir, dass Sie sich wie hier beschrieben verhalten werden. Ich h=
offe auf eine Antwort von dir.

Danke und Gott segne dich.
Mit freundlichen Gr=C3=BC=C3=9Fen

Frau Flora Michael.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/698431760.29478759.1558727123226.JavaMail.zimbra%40ntymail.com.
For more options, visit https://groups.google.com/d/optout.
