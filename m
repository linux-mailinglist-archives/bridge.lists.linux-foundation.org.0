Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841F3117C36
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 01:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0F2387F9C;
	Tue, 10 Dec 2019 00:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XL6opPWcuHiy; Tue, 10 Dec 2019 00:13:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DC7B87EA7;
	Tue, 10 Dec 2019 00:13:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 22D61C1796;
	Tue, 10 Dec 2019 00:13:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17B5CC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 00:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D7AF2043F
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 00:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xQMvGgw2RdT6 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 00:13:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B6E020364
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 00:13:54 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bh2so5369179plb.11
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 16:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KLN1DYREPXJpHHYubJRCZWT4Wl8rGRaKmxfqjHjWjvk=;
 b=iwzzrNTlkY94RCl4TChdZktFq7Pjb6pT5dQseFy7qH0h/JLXalF6dHolaBGhxLQowT
 dhz8TdjxRX29eMgwexF1fgI4Dlu7dA21zBBPkUCSJ9ejdaYLt4WLnLR+fiyw03Y2Sp+i
 cRhJK+g+J5khXtcocNbBzQtmz0/UDXF0FJqizj5S/Y3cWDPkSUjYg9OXegRsjMXXZrKN
 PgsXyI/vAt0lNtWHzlJdHS8Bl8xDKpW+lnQnOylhE/ugKIdNnm5npTUXKnElwHpf0Ju/
 +XE2Z+YQvJVFA5mMUMyFmgFtvrX26pi/NGYuAduda4ekrD33xvogSecQOX4kf6DKr9gk
 FWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KLN1DYREPXJpHHYubJRCZWT4Wl8rGRaKmxfqjHjWjvk=;
 b=MOE+yCJ+k6DLX2/uSHKTp9Suwvh64pytRXy0Do08r8J0gCw03HMgOgP3PD2kQbnckt
 ACiyUSW76/HL0+znGUvqyyWsBgk23wEmWbEVK3kKtUvtMrXwgVA4La94pw5ciRFBAjNo
 i9/IR56WLJn6ICaJ5XKgK++xjB20fiehnZm1mouhCQsw5GW5K/oCnLq/YrxXTcTjVUs+
 /p7WqBzlxnG1JGG93J78nVJkUHfd1qAdFRIQxlrsDlopAIMuMQmxDRhVpE2EJmorx9j6
 UbZW5hO7k3yv+DavTZZ2RsR3zY7B2C2AgQWYHQogBe8z2Z52IBLEQZmHXrjPVRtY8VNP
 nVNQ==
X-Gm-Message-State: APjAAAUQGnjZiJXSy0V8YONR9msc9mLkMMLu6yeyf1hFn1vGA6xU7dh9
 Xg/qG5DCXZzQYfSYwgS5JycEAQ==
X-Google-Smtp-Source: APXvYqyEr7qSAEmUoFhMYvvTlKzsQKOGd/nnPA/96ScLfk/tsc1jAzlLra/Rm5FbWQte47dauiP8hA==
X-Received: by 2002:a17:90b:3115:: with SMTP id
 gc21mr1994006pjb.54.1575936833824; 
 Mon, 09 Dec 2019 16:13:53 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id in6sm468181pjb.8.2019.12.09.16.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 16:13:53 -0800 (PST)
Date: Mon, 9 Dec 2019 16:13:45 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vivien Didelot <vivien.didelot@gmail.com>
Message-ID: <20191209161345.5b3e757a@hermes.lan>
In-Reply-To: <20191209230522.1255467-2-vivien.didelot@gmail.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <20191209230522.1255467-2-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH iproute2 v2] iplink: add support for STP xstats
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

On Mon,  9 Dec 2019 18:05:22 -0500
Vivien Didelot <vivien.didelot@gmail.com> wrote:

> Add support for the BRIDGE_XSTATS_STP xstats, as follow:
> 
>     # ip link xstats type bridge_slave dev lan5
>                         STP BPDU:
>                           RX: 0
>                           TX: 39
>                         STP TCN:
>                           RX: 0
>                           TX: 0
>                         STP Transitions:
>                           Blocked: 0
>                           Forwarding: 1
>                         IGMP queries:
>                           RX: v1 0 v2 0 v3 0
>                           TX: v1 0 v2 0 v3 0
>     ...

Might I suggest a more concise format:
	STP BPDU:  RX: 0 TX: 39
	STP TCN:   RX: 0 TX:0
	STP Transitions: Blocked: 0 Forwarding: 1
...
