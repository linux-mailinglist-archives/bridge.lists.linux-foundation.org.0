Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 944041377A3
	for <lists.bridge@lfdr.de>; Fri, 10 Jan 2020 21:03:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3CC2C226D0;
	Fri, 10 Jan 2020 20:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHfqfftMtyon; Fri, 10 Jan 2020 20:03:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B6CD322219;
	Fri, 10 Jan 2020 20:03:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93EF1C0881;
	Fri, 10 Jan 2020 20:03:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 82955C0881
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FE1988501
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrO1SuOqw9PW for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jan 2020 20:03:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FFB287762
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:03:42 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id r19so3383864ljg.3
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 12:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=date:in-reply-to:references:mime-version:content-transfer-encoding
 :subject:to:cc:from:message-id;
 bh=1Ym1ky3QD6f3IfF+EM/zO4+gog3cH55P6RTJDsna7IQ=;
 b=E38DqpbV3vggOQto0Gi9BjS2Txq4gAHx7whMemoyjXJNP75s1nKgPat2YZRL432Tao
 qYWsDoTkFfl/v8ouvUvcpfEsKsNgoqvLwPPUpzcCUvr1wip+DAocvEVOjgTLKrFRxZHk
 SoGgYf71/qtcoy41LLSYnM/sNCy++UXCF9L6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=1Ym1ky3QD6f3IfF+EM/zO4+gog3cH55P6RTJDsna7IQ=;
 b=RLOv3Q2wjJuOQga6tSg4JPyIPi3PlWXtyiyS9eXHwwqm72LvKIGRAL3I/wkaQb4aJQ
 ucEln26LpulfpIbkNqf9xJugi3d1GEXFjYRjy9uHJVxsp66rqubG5lKBYR+OoCxiN5nZ
 I3JH8Hna2LvR3bEndnUiT8Qlq3O724Spz7a3jsXBdMd5FEoPLTMAbYY/XrHLhlJGuGoL
 DjPEGrKh/kzqpTmOUT2I9xkPmNg2MoEeS6ICrhC35bIRhU27pWZ+Bdlf3ssVzW5CEtjN
 Y5Ds1lm/r9pBK0XOrtrJpX4EftzNDz3ZyRqBHGi6qta0hJZqNmpXGXqRacBDpN9EVaha
 HhpQ==
X-Gm-Message-State: APjAAAWydgzZNYRa2HG/cJwmKD1Vce8ZxDh6/R91x+Fu91OY5oG2lZti
 rY9c9bxmCSr6+F8UWh07U2UsJw==
X-Google-Smtp-Source: APXvYqx/ej5J4uGDUdnnFlnCCL4JCUBhgAYSWrgCWagdQjKwJQuQLD7tWziH1FplrsmwiLVLAanJcg==
X-Received: by 2002:a05:651c:30a:: with SMTP id
 a10mr3722167ljp.101.1578686620688; 
 Fri, 10 Jan 2020 12:03:40 -0800 (PST)
Received: from localhost ([149.62.204.86])
 by smtp.gmail.com with ESMTPSA id h10sm1438834ljc.39.2020.01.10.12.03.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 12:03:40 -0800 (PST)
Date: Fri, 10 Jan 2020 22:03:37 +0200
In-Reply-To: <20200110.112736.1849382588448237535.davem@davemloft.net>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <6f1936e9-97e5-9502-f062-f2925c9652c9@cumulusnetworks.com>
 <20200110.112736.1849382588448237535.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: David Miller <davem@davemloft.net>
From: nikolay@cumulusnetworks.com
Message-ID: <3CD4F75F-C462-4CF2-B31A-C2E023D3F065@cumulusnetworks.com>
Cc: andrew@lunn.ch, jakub.kicinski@netronome.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vivien.didelot@gmail.com,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jiri@mellanox.com, jeffrey.t.kirsher@intel.com, dsahern@gmail.com,
 olteanv@gmail.com, horatiu.vultur@microchip.com
Subject: Re: [Bridge] [RFC net-next Patch 0/3] net: bridge: mrp: Add support
	for Media Redundancy Protocol(MRP)
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

On 10 January 2020 21:27:36 EET, David Miller <davem@davemloft=2Enet> wrote=
:
>From: Nikolay Aleksandrov <nikolay@cumulusnetworks=2Ecom>
>Date: Fri, 10 Jan 2020 16:13:36 +0200
>
>> I agree with Stephen here, IMO you have to take note of how STP has
>progressed
>> and that bringing it in the kernel was a mistake, these days mstpd
>has an active
>> community and much better support which is being extended=2E This looks
>best implemented
>> in user-space in my opinion with minimal kernel changes to support
>it=2E You could simply
>> open a packet socket with a filter and work through that, you don't
>need new netlink
>> sockets=2E I'm not familiar with the protocol so can't really be the
>judge of that, if
>> you present a good argument for needing a new netlink socket for
>these packets - then
>> sure, ok=2E
>
>With a userland implementation, what approach do you suggest for
>DSA/switchdev offload
>of this stuff?

Good question, there was no mention of that initially, or I missed it at l=
east=2E=20
There aren't many details about what/how will be offloaded right now=2E
We need more information about what will be offloaded and how it will fit=
=2E=20



l
