Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E29936EDD95
	for <lists.bridge@lfdr.de>; Tue, 25 Apr 2023 10:04:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EED481A2B;
	Tue, 25 Apr 2023 08:04:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EED481A2B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=x/qDgxFZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFLYceYxHoeJ; Tue, 25 Apr 2023 08:04:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B6F4F81A0D;
	Tue, 25 Apr 2023 08:04:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6F4F81A0D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5E9E0C007C;
	Tue, 25 Apr 2023 08:04:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4FF8FC002A
 for <bridge@lists.linux-foundation.org>; Tue, 25 Apr 2023 08:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36E806073E
 for <bridge@lists.linux-foundation.org>; Tue, 25 Apr 2023 08:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36E806073E
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=x/qDgxFZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cmsvY7xPlIKe for <bridge@lists.linux-foundation.org>;
 Tue, 25 Apr 2023 08:04:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C63C660739
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C63C660739
 for <bridge@lists.linux-foundation.org>; Tue, 25 Apr 2023 08:04:51 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-5069097bac7so9643084a12.0
 for <bridge@lists.linux-foundation.org>; Tue, 25 Apr 2023 01:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1682409890; x=1685001890;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NjpvhDlUzs+FH6psAy6L7Qnb3qb5q6XYt4SuREIyvuo=;
 b=x/qDgxFZdquJgvVuoNG+pNaTL92jic7Eanbca1ZdZReiQXlMI29baH3v+qPXuohcdE
 8hYQNWArhq+TV20aJloFcvpsYUDc1XYtq8pfGYawLOvi926U83kZVrTrbSsqMvdDLy+i
 ceaXVI3DYXXHZU7VELiWPuugpCJ5YdGwgyg26U6mnIvYvXy4fIyFYWo0iQiyZVGI3Shs
 4eHSIVH+QJDzjIA0gdjpL/BB2vH/efLph/XpQwgH8rjBDtn9bRGhZRDVLMIzyNpUYzm5
 5kGuCu1Oy7Fy5CgFLy4tmrcik0+O/xEQGk8PTp50586SInTXeIcogLywQJZIdTgD0nhO
 1r+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682409890; x=1685001890;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NjpvhDlUzs+FH6psAy6L7Qnb3qb5q6XYt4SuREIyvuo=;
 b=j6jBCNoxMTeXVp8waZiLqr8mV3fRBTX1uA5y4xcVRdJGsNsgqFi8Wdx7HKbT9nFLAq
 fbeOs2V49I9a7KXjvISiURmx//sT42oveMCY1waZGDVsUalheoksJVv9s02bNXNCWRH9
 c3CaYCa06XNkcAVYJBtONUDZRgNORHtWdXxNnaGJlxYObMpceGSZztEvM50FmDG7/vD3
 LiWrj9bEHOJT9137hI3+n725EKvbQXobMGUNpvAw/RP9HGY7oE6I/QGoUO7uAwDg6JBh
 ENitU2TdZLi8KQb548gzFw6xJMyFtDlsKDhy8ucWb0fn0YfaTKH2dO6N4koqEjT7RcSp
 /Rsw==
X-Gm-Message-State: AAQBX9dtAl9tuVQ0LtUTqZg4590jjxPVhkNQKRnr9L1mbHGc7iTU/c/o
 E+xYXDBQP6uPxLf76JV7Z9U3Gg==
X-Google-Smtp-Source: AKy350ZbgTZxZCZWhg17IJ7dGX8SG51JSAQOeVeHrpC+C3zzMNhfWdKJWnvy2jX3UzWozSIPKdi/+Q==
X-Received: by 2002:a05:6402:3d1:b0:506:be3f:ebb1 with SMTP id
 t17-20020a05640203d100b00506be3febb1mr13449039edw.26.1682409889626; 
 Tue, 25 Apr 2023 01:04:49 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 d18-20020aa7ce12000000b00509d375a0c0sm2753193edv.49.2023.04.25.01.04.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Apr 2023 01:04:48 -0700 (PDT)
Message-ID: <5ddac447-c268-e559-a8dc-08ae3d124352@blackwall.org>
Date: Tue, 25 Apr 2023 11:04:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, Hangbin Liu <liuhangbin@gmail.com>
References: <ZEZK9AkChoOF3Lys@Laptop-X1> <ZEakbR71vNuLnEFp@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZEakbR71vNuLnEFp@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Jakub Kicinski <kuba@kernel.org>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [Question] Any plan to write/update the bridge doc?
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

On 24/04/2023 18:46, Ido Schimmel wrote:
> On Mon, Apr 24, 2023 at 05:25:08PM +0800, Hangbin Liu wrote:
>> Hi,
>>
>> Maybe someone already has asked. The only official Linux bridge document I
>> got is a very ancient wiki page[1] or the ip link man page[2][3]. As there are
>> many bridge stp/vlan/multicast paramegers. Should we add a detailed kernel
>> document about each parameter? The parameter showed in ip link page seems
>> a little brief.
> 
> I suggest improving the man pages instead of adding kernel
> documentation. The man pages are the most up to date resource and
> therefore the one users probably refer to the most. Also, it's already
> quite annoying to patch both "ip-link" and "bridge" man pages when
> adding bridge port options. Adding a third document and making sure all
> three resources are patched would be a nightmare...
> 
>>
>> I'd like to help do this work. But apparently neither my English nor my
>> understanding of the code is good enough. Anyway, if you want, I can help
>> write a draft version first and you (bridge maintainers) keep working on this.
> 
> I can help reviewing man page patches if you want. I'm going to send
> some soon. Will copy you.
> 
>>
>> [1] https://wiki.linuxfoundation.org/networking/bridge
>> [2] https://man7.org/linux/man-pages/man8/bridge.8.html
>> [3] https://man7.org/linux/man-pages/man8/ip-link.8.html
>>
>> Thanks
>> Hangbin

Always +1 for keeping the man pages up-to-date, but I tend to agree with Jakub as well
that it'd be nice to have an in-kernel doc which explains the uapi and potentially
at least some more obscure internals (if not all), we can insist on updating it
for new changes

I'd be happy to help fill such doc, but at the moment I don't have the
time to write the basis for it. As Hangbin nicely offered, I think we can start
there. For a start it'd be nice to make an initial outline of the different sections
and go on filling them from there.

E.g. as a starter something like (feel free to edit):
Introduction
Bridge internals (fdb, timers, MTU handling, fwding decisions, ports, synchronization)
STP (mst, rstp, timers, user-space stp etc)
Multicast (mdb, igmp, eht, vlan-mcast etc)
VLAN (filtering, options, tunnel...)
Switchdev
Netfilter
MRP/CFM (?)
FAQ

Each of these having uapi sections with descriptions. We can include references
to the iproute2 docs for cmd explanations and examples, but in this doc we'll have
the uapi descriptions and maybe some helpful information about internal implementation
that would save future contributors time.

At the very least we can do the uapi part for each section so options are described
and uapi nl attribute structures are explained.

Cheers,
 Nik

