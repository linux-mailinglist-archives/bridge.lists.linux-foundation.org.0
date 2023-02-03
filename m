Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D7D6892E3
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 09:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE7238202A;
	Fri,  3 Feb 2023 08:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE7238202A
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=ugJ1ZUxX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCaGYjSiVO4x; Fri,  3 Feb 2023 08:58:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 67A5D82025;
	Fri,  3 Feb 2023 08:58:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67A5D82025
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 047BFC007C;
	Fri,  3 Feb 2023 08:58:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B005CC002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E48741058
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:58:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E48741058
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=ugJ1ZUxX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qA_wZQ5C0smn for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 08:58:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC32D401D5
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC32D401D5
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:58:15 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id v13so4455417eda.11
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 00:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1z40xBZl1s88AVKBaaMT4kPg0/IWGeDII88qOAQgOrM=;
 b=ugJ1ZUxXgqF6M2ADHF0b7CSoiPxc2idiHZ2fRCEKjinDPuJE2buPQtrAgjDPb3eklH
 yExCa7ATGFczL1g330HeaNsvJYxp3uMmFmpgZ5scL1Gv8BDXq+CM8vi+Yy6zCybrbEE1
 yvEnkc+NXR+ivXGx61+N8VusLuYKcwoRKlBJC2qLYRuGCA8ylN4rd7Dusa8F29f1tkss
 DATUANszgU8rquTfwekSlBTrURvimxxPLYMUDnzTjX3g9e5taFjOLQuY2fUcQVY5dnv2
 8vAW/OmHtlY200qBn0iNM/CgVbxDZ8ErDa3qfQMqjybVpO87MwGol2ISPhewfHnDAgQO
 wz/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1z40xBZl1s88AVKBaaMT4kPg0/IWGeDII88qOAQgOrM=;
 b=LhVbRXrXPmIiBnKLbBZiP5nDFdmd/bMpeupkqjABInKbu6zT6Z/ZwYLdDLrNgRJSIQ
 z6mq8TxSLZR1DkaQamWdonPhs8oHRsX0fxSCe2Wf/IqWYdFF0yQiENKSAvTZNQ05M6X3
 9nH7mK03xZ13S7KnnlTx5feE4ODrxF2Jtnk4UNdH/RAbqD0UWDUkmySqvaUMbhRx2f68
 1fs36h2765C9X8331pP1/cTwX/Jh/MSEh07ECWbfKvH8gqsBziln7GM4hW6Gx9YHbyxC
 ivGDxE/H/c2sgpKAK9hWzbQ9PbTal/mRBhrarlqZY1d71lW4j8Xf/FawyXO95FfK6//c
 A7ig==
X-Gm-Message-State: AO0yUKWFppb172g/MqHn+sYmA2TXEMRiK8W9bNQsc5we3G4JhUDlFSqS
 mEpyL8AdnwK/kqVjmYO0hA6W+Q==
X-Google-Smtp-Source: AK7set/ZmQCxv0xQUirdGsWOY06LUA2AkD+Yj31SlUyBsvKXs195QxZ3dTLxR/WJF3JVqpCmSNj+gA==
X-Received: by 2002:a05:6402:3647:b0:49e:eb5:ed05 with SMTP id
 em7-20020a056402364700b0049e0eb5ed05mr9680658edb.9.1675414693697; 
 Fri, 03 Feb 2023 00:58:13 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 k3-20020a056402048300b00499b6b50419sm813274edv.11.2023.02.03.00.58.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Feb 2023 00:58:13 -0800 (PST)
Message-ID: <6e50c1ac-9182-0d86-24fb-afcc2c63db85@blackwall.org>
Date: Fri, 3 Feb 2023 10:58:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1675359453.git.petrm@nvidia.com>
 <a01c188bcbbb0f5f53e333ed9175f938eb2736be.1675359453.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <a01c188bcbbb0f5f53e333ed9175f938eb2736be.1675359453.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Steven Rostedt <rostedt@goodmis.org>, linux-trace-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v3 06/16] net: bridge: Add a
 tracepoint for MDB overflows
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

On 02/02/2023 19:59, Petr Machata wrote:
> The following patch will add two more maximum MDB allowances to the global
> one, mcast_hash_max, that exists today. In all these cases, attempts to add
> MDB entries above the configured maximums through netlink, fail noisily and
> obviously. Such visibility is missing when adding entries through the
> control plane traffic, by IGMP or MLD packets.
> 
> To improve visibility in those cases, add a trace point that reports the
> violation, including the relevant netdevice (be it a slave or the bridge
> itself), and the MDB entry parameters:
> 
> 	# perf record -e bridge:br_mdb_full &
> 	# [...]
> 	# perf script | cut -d: -f4-
> 	 dev v2 af 2 src ::ffff:0.0.0.0 grp ::ffff:239.1.1.112/00:00:00:00:00:00 vid 0
> 	 dev v2 af 10 src :: grp ff0e::112/00:00:00:00:00:00 vid 0
> 	 dev v2 af 2 src ::ffff:0.0.0.0 grp ::ffff:239.1.1.112/00:00:00:00:00:00 vid 10
> 	 dev v2 af 10 src 2001:db8:1::1 grp ff0e::1/00:00:00:00:00:00 vid 10
> 	 dev v2 af 2 src ::ffff:192.0.2.1 grp ::ffff:239.1.1.1/00:00:00:00:00:00 vid 10
> 
> CC: Steven Rostedt <rostedt@goodmis.org>
> CC: linux-trace-kernel@vger.kernel.org
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Steven Rostedt (Google) <rostedt@goodmis.org>
> ---
> 
> Notes:
>     v2:
>     - Report IPv4 as an IPv6-mapped address through the IPv6 buffer
>       as well, to save ring buffer space.
> 
>  include/trace/events/bridge.h | 58 +++++++++++++++++++++++++++++++++++
>  net/core/net-traces.c         |  1 +
>  2 files changed, 59 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


