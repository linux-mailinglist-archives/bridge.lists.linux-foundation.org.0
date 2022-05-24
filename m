Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEE1535AE7
	for <lists.bridge@lfdr.de>; Fri, 27 May 2022 10:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D7A484730;
	Fri, 27 May 2022 08:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhGzydmjsayo; Fri, 27 May 2022 08:02:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 39B3C8472D;
	Fri, 27 May 2022 08:02:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F339AC007E;
	Fri, 27 May 2022 08:02:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 324D6C002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 00:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12EFC612AA
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 00:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id epfIIGVgYMLF for <bridge@lists.linux-foundation.org>;
 Wed, 25 May 2022 00:10:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AA7B60E02
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 00:10:51 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id h4so8816635vsr.13
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 17:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=mkFHfwS53+c12TAORlNs+UoPhHkkLMPsYKhhmQpCR/c=;
 b=YfPmtKz7eNVVZF8a0qdQaLoNuIjtg+qFq5aSie6RX5ziL3QRACcW8ftkD5HZPiia9j
 JLf7aY3505cZ1Pwem0Q0CkFMPjKfir7vtFPhwiVqzRJavGC/8MAVO+XWnw9Q3lY6QPQH
 wlOsZiqlnYWpZMYe39tSkSIaSmIo/XhpE0sAsupv7w24l/jBcE3+lsQISTcqSFLEmDoE
 0eky21x9GxxJSsVTE7AX/vB5rp0utEcX/YOttT2bQlZre/KS0cFHIzoLTM3T4PzgiJtz
 Y9MkRdAY3NgY4r6cKJXdaXMjvDW3tf2/qy9EdNjkOhjIsVXz2KNOR8w02I6Gls1dHWv1
 z9tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mkFHfwS53+c12TAORlNs+UoPhHkkLMPsYKhhmQpCR/c=;
 b=yyJh4q9gDhZGtfiQJ34epwvBXVUb43qTzozuIV4ZkPHLdRROItM6gd7HWxZcMtayBg
 c0aWFxUnb7AnIfpBVr1mg2DN16jnJFDQtTzjal2fV+v8NqL3JzOWTAR58v+iJrXZ+yxD
 MZOQLNIRMxMVjrDzEHLSdyGud2N1mr8fNEWc0icnpFuupvAKihWCLBf9+pmcBukdhyHq
 1f8AKugxFxOUnVCjmsckk2lsF9nEZvJwh4UXg1Bm0/D3ODLAzwbZkRGeGss3Cj+BJ+gs
 OyJGSr4nWKiczY2xi76kaNs+Y5hySpWVA+XhpbVQh7Y0AD4GGYmHLEK7jvIQFblDAktJ
 TPoA==
X-Gm-Message-State: AOAM532AE/3XblJoCPVV516xugfa9gt3QYOWoghSeck4qznY7XSSrkd5
 45SJP2VYikixWzu1zKajOEsxN1VGK6c7ryfCY8iDXgfeQw9s0w==
X-Google-Smtp-Source: ABdhPJwnqHcaIEUvEUc6G77giIGVFRK9dI/WKGU/UELr7IH6XjiOIIQOQbHdMflwiCeK1Wt+sfHXYvdV7d0VG2EhIoI=
X-Received: by 2002:a67:dd0b:0:b0:337:c5e4:3a07 with SMTP id
 y11-20020a67dd0b000000b00337c5e43a07mr4710125vsj.34.1653437449600; Tue, 24
 May 2022 17:10:49 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?2K/Ysdi62KfZhSDYp9mE2LnZhNmK?= <derghamali444@gmail.com>
Date: Wed, 25 May 2022 00:52:58 +0300
Message-ID: <CACP1nsMj-+pj45zyHOPH48AVxPoqvsmEbptw2a2QxhU2fe+vdw@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="000000000000d783fb05dfcae738"
X-Mailman-Approved-At: Fri, 27 May 2022 08:02:10 +0000
Subject: Re: [Bridge] [PATCH v5 net-next 05/10] net: switchdev: pass flags
 and mask to both {PRE_, }BRIDGE_FLAGS attributes
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

--000000000000d783fb05dfcae738
Content-Type: text/plain; charset="UTF-8"



--000000000000d783fb05dfcae738
Content-Type: text/html; charset="UTF-8"

<div dir="auto"></div>

--000000000000d783fb05dfcae738--
