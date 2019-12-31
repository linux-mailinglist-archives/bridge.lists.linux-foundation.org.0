Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 314B812E9C4
	for <lists.bridge@lfdr.de>; Thu,  2 Jan 2020 19:11:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D7C085CE0;
	Thu,  2 Jan 2020 18:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id phxf2Fg1QOFq; Thu,  2 Jan 2020 18:11:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1E5386411;
	Thu,  2 Jan 2020 18:11:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CEADC077D;
	Thu,  2 Jan 2020 18:11:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BA28CC077D
 for <bridge@lists.linux-foundation.org>; Tue, 31 Dec 2019 11:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E0E520353
 for <bridge@lists.linux-foundation.org>; Tue, 31 Dec 2019 11:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfHmv-wHOaBR for <bridge@lists.linux-foundation.org>;
 Tue, 31 Dec 2019 11:33:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by silver.osuosl.org (Postfix) with ESMTPS id 0267D20352
 for <bridge@lists.linux-foundation.org>; Tue, 31 Dec 2019 11:33:34 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id 77so49978287oty.6
 for <bridge@lists.linux-foundation.org>; Tue, 31 Dec 2019 03:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=S12iGpmxlWZI7sA37G50VHKQmOLgkhqzFyTDEvCRXmg=;
 b=Cp3zPuldrcm8ws6QYmvc0z2FQLKtejathAGxeMhB+DowpEqzZSJ6IhJWGLvUxSp4e8
 sZr4oXuGtUpDhPNcoq2zanwLfpw/NLDRxRw0O+M8Dn7SYo59zowOZXafYOUI430K8Qun
 2oC1vQ+yycM59S+CVqhFYS1idiQu9SelSFGh8Mee30y3iV2NrlVnNLZoOAfXwCZeMtOR
 UtT3AQvQKYR6HL0XdFyrQccoWQMMvjcPRhRQOjVm9dN49so3lfph8ImLzXIF5LAGF1XS
 qwzplt3KySOaaDt7rxdU6tf70LXJuK45UgVnjvS/bhXEdp1nfioQSK7QQHqRVlsC1Ah8
 2WHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=S12iGpmxlWZI7sA37G50VHKQmOLgkhqzFyTDEvCRXmg=;
 b=LEpMzQsamrCxxZiIn4Iefvjz2Tm6UuYgNmcpzeQR5qWaHl2Eo8NSOfhjJHt0bJFLmW
 qt0uPtUVs+ONKCbkRjuEX16LYt6D02q+GI/q9CAFhIpg4vTV3HfNpocY/MkttmSSi6v7
 9jmFT1vaAJkbVk2cf0C36Zklo/bieJqD3RrbQvTkAjga1Y3HBOGlu755XInfFX5a/1HW
 +Lw5joBGOeHTeQh+HSiyUKFS1fpCl/x6n/diLkCD4aJbpgydecZ1Uex0scOa1wC+dGtL
 uM81Ph4YsAU8WOlp9S4vjnCrM/jIGbnalW+uUycewtIcy41/wtK3fgNgQIZvjqnbHkQ0
 jClA==
X-Gm-Message-State: APjAAAVeY2e2suIE1jBHyQLOvbo23WLo1k9pVf4O7RY8Ab40tg2q4v4d
 aVrpbH9J+ydju+6PqTEnAoCgJSQtJDJVbceNIR6rrO24
X-Google-Smtp-Source: APXvYqyWg62ohW430gc5bIy7HDwdLUbAatcKjkL8Znm+XmjZ7OJ6gIQ1URZEfbM4uVSAh0Yz6alAnf65hxgVIu1WFC0=
X-Received: by 2002:a9d:62d9:: with SMTP id z25mr32386564otk.249.1577792014025; 
 Tue, 31 Dec 2019 03:33:34 -0800 (PST)
MIME-Version: 1.0
From: Simon Jones <batmanustc@gmail.com>
Date: Tue, 31 Dec 2019 19:33:24 +0800
Message-ID: <CAOE=1Z0OO+CYkZDFk06=c8b1F3VSH=nVSGU=Bu_iU6HPQxrCXw@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="000000000000868613059afe54e4"
X-Mailman-Approved-At: Thu, 02 Jan 2020 18:11:31 +0000
Subject: [Bridge] [Linux Bridge] How to get notify of mac entry add/del of a
	Bridge ?
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--000000000000868613059afe54e4
Content-Type: text/plain; charset="UTF-8"

Hi all,

I need a feature, which sync mac addresses learned in Bridge(linux bridge).

As for routing stack, we have rtnetlink to get notify like RTM_NEWNEIGH
message.

So is there similar function in linux bridge, to get mac entry add/del
notify of a Bridge?

Thank you!

----
Simon Jones

--000000000000868613059afe54e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I need a feature, wh=
ich sync mac addresses learned in Bridge(linux bridge).<br></div><div><br><=
/div><div>As for routing stack, we have=C2=A0<span style=3D"color:rgb(206,1=
45,120);background-color:rgb(30,30,30);font-family:Menlo,Monaco,&quot;Couri=
er New&quot;,monospace;font-size:12px;white-space:pre">rtnetlink</span>=C2=
=A0to get notify like RTM_NEWNEIGH message.</div><div><br></div><div>So is =
there similar function in linux bridge, to get=C2=A0mac entry add/del notif=
y of a Bridge?</div><div><br></div><div>Thank you!</div><br clear=3D"all"><=
div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>----</div>Simon Jones</d=
iv></div></div></div></div></div>

--000000000000868613059afe54e4--
