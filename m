Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C334C97AF
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 22:20:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7173840866;
	Tue,  1 Mar 2022 21:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjYc1B07ZjUN; Tue,  1 Mar 2022 21:20:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D7F19410A3;
	Tue,  1 Mar 2022 21:20:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1CD5C0085;
	Tue,  1 Mar 2022 21:20:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16A00C000B
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 21:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4684826C1
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 21:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8m_RmaYXjlKJ for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 21:20:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD40C8269C
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 21:20:33 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id g39so28997352lfv.10
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 13:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=xWWyZGW03ybyYdOpl65GgcmPLqi0GLI/po6R5RGyI04=;
 b=5R8NituuRk1fNDuBW/0VnIPErFhdun3HJhCiiXg+Xnt1URDomDa1vqyvkC4Secb5JY
 t6R7VpyuJgVAKt74QI1lG+IHOkcH+qfN2v19uhJzExj1Mh0iuGDfk9wHKhzb0vdAgG9J
 kYyK5LuXHfOD9g0bH+l4iBg6piA9+8JnQ5ewG6rs/S6TuVj6ubfx/Q5AACXAGSGTzb8M
 +OZ6M/OEQEAcbU7arOlnIJl8RMMO0TafUPm2EojaqXyDA7BDxEKk6+PqrTfbmjuIuD20
 8DEuzueI0EjUxmkPCMcw3aep9hKfmaEHhdL+RRwUIa0b+G41CPvLpsG7/YvnRhoReNf6
 WbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=xWWyZGW03ybyYdOpl65GgcmPLqi0GLI/po6R5RGyI04=;
 b=Mlb4Gwcm5CJtGO8/Atzz8DxgwpsVdbU1isoMyckbKg+7w8C1PRPjH78DV5XibcWgb4
 GIHbk7RJLW6uJkKH1cd6YbldSOKpul6PV+g3kjVI8ZZHdgn9qhNL4Y539Q7E9JsVHiwT
 9bp3yzE3wFSochX80ZKp8LjP75QRCWBcgxV1I208Ye48Z1lOl/BcMxare7Osgn5WNZ7x
 YMFasEC/uPTU2y+nCUvzIC3i7YoJAkeescBNre0Yc7FwxVHcEA75m/pxxDerA55OYsTa
 TBfgxrTEcGw7pY3wzeIuVVCP+UogRQlmS7US4dZY/qMaab0P7KAgDqnRlT/ESXBCz3Yg
 47DQ==
X-Gm-Message-State: AOAM530c7jaLQgM7TlozEe7RWivDFc0fnspypYPURzePYvwyBMuLPCsa
 ID/3QSau5i9OaHY1gKvSt27E7w==
X-Google-Smtp-Source: ABdhPJyMu3GSfK5F/3LPZfqkZQ4z4M40zsIk/PNNWsnVXhMJKij8GdgvcM+kwWU2Q7fk30/SFjm5bg==
X-Received: by 2002:a05:6512:287:b0:443:7f1d:e8ed with SMTP id
 j7-20020a056512028700b004437f1de8edmr16542871lfp.321.1646169631444; 
 Tue, 01 Mar 2022 13:20:31 -0800 (PST)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 g37-20020a0565123ba500b00443685d5ecfsm1673158lfv.151.2022.03.01.13.20.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 13:20:31 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220301162142.2rv23g4cyd2yacbs@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301162142.2rv23g4cyd2yacbs@skbuf>
Date: Tue, 01 Mar 2022 22:20:30 +0100
Message-ID: <87fso1nzdt.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 navolnenoze@simerda.eu, Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 00/10] net: bridge: Multiple
	Spanning Trees
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

On Tue, Mar 01, 2022 at 18:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> Hi Tobias,
>
> On Tue, Mar 01, 2022 at 11:03:11AM +0100, Tobias Waldekranz wrote:
>> A proposal for the corresponding iproute2 interface is available here:
>> 
>> https://github.com/wkz/iproute2/tree/mst
>
> Please pardon my ignorance. Is there a user-mode STP protocol application
> that supports MSTP, and that you've tested these patches with?
> I'd like to give it a try.

I see that Stephen has already pointed you to mstpd in a sibling
message.

It is important to note though, that AFAIK mstpd does not actually
support MSTP on a vanilla Linux system. The protocol implementation is
in place, and they have a plugin architecture that makes it easy for people
to hook it up to various userspace SDKs and whatnot, but you can't use
it with a regular bridge.

A colleague of mine has been successfully running a modified version of
mstpd which was tailored for v1 of this series (RFC). But I do not
believe he has had the time to rework it for v2. That should mostly be a
matter of removing code though, as v2 allows you to manage the MSTIs
directly, rather than having to translate it to an associated VLAN.
