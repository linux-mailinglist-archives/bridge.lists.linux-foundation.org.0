Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1595647EC9
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:52:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DE1F60B55;
	Fri,  9 Dec 2022 07:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DE1F60B55
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=pu+MvrrI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UtRFbxUK6HvE; Fri,  9 Dec 2022 07:52:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id F40F660B44;
	Fri,  9 Dec 2022 07:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F40F660B44
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9234DC007C;
	Fri,  9 Dec 2022 07:52:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABAC7C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9101C4014B
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9101C4014B
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=pu+MvrrI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fuhLr42OEptw for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:52:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF19D40127
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF19D40127
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:52:27 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 n9-20020a05600c3b8900b003d0944dba41so2785537wms.4
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YQ4b+q/xAzhxcWk+HTn7pTbcjlOt6DHs6L/eJIRo8Q8=;
 b=pu+MvrrIHTIpdKlGXc7Y8wpmxWZCc2c/of308f6qDqoYe8LDc2TlOQskHdzymywFJ5
 oJ2FHsYAHH6CiiH0NtT7AaGqQSAnYZW5SMC2vEY0arM4Bosn+I8hSRu4Awzd2fRrpx0h
 Z37H8EvBF7l431wVPIujQngZ1Sgf2goTC4BzlA+t9vcL/Bog8IaMQAIsCxGirUAjEhvk
 ohMFWYEvpRdxVsYq+BDF1kZtvxwkGbcISJoTl92UA2QMnr6ePOOBi7pPZsugPy8eTasP
 BW/qjjsOLv3IFB45D3Z49PaH07lijie0fElo2BqSEQ92T20pgxJ5nK2hQpVkNOKMP0qI
 s5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YQ4b+q/xAzhxcWk+HTn7pTbcjlOt6DHs6L/eJIRo8Q8=;
 b=0oPKtXkGnGYGof6/HqP3E12DaUm+fsg40t3YbrfpheFiMAHugo3r62NbI2NscTWUqP
 mRFMBvyCr2tzn+hYW5f91ArZROOsYjocUgJL5wWnDxaNuF+x9Ud2z3MQUzZsaNSlsGzb
 I9A7d2gTIuy2n9qAJuVUVGn6FlomStgfTLA55kPHi7WJlWuwjdU1ryNpnvOUlTcOHrzG
 Lj9mqweYzTdLfjTLfqj1rLNNxHlRdnutS8+C0xHY22xyLu0D9dOvvsPy6kXFuCeGFrwk
 +FvjtRokBZU5RVhAdZuYz3waltLayu5Nx41BSESg9OWvVwlT5P1Wlr3DUfZPKLFLQGOY
 cB0Q==
X-Gm-Message-State: ANoB5pl/VdgA77Cpyxy3l1ufn1kPksUbmU+x+KWe63aaywirpXcE/IUe
 wGrnChGbuRiCWWZ2hTok9EnqGA==
X-Google-Smtp-Source: AA0mqf5KRJd9O3z4wvu1gvbbgEqDZYjmIF65M+fMTtO4qqe+Tiu8dWPPKEHq0OyzjMUX+vkG5qFEnw==
X-Received: by 2002:a05:600c:3b19:b0:3cf:5584:e714 with SMTP id
 m25-20020a05600c3b1900b003cf5584e714mr4023649wms.25.1670572345963; 
 Thu, 08 Dec 2022 23:52:25 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 o30-20020a05600c511e00b003a3442f1229sm8287969wms.29.2022.12.08.23.52.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:52:25 -0800 (PST)
Message-ID: <ed2bb9b0-d3bd-604d-ef7d-ddd145ffd13b@blackwall.org>
Date: Fri, 9 Dec 2022 09:52:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-11-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-11-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 10/14] bridge: mcast: Allow user space
 to add (*, G) with a source list and filter mode
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> Add new netlink attributes to the RTM_NEWMDB request that allow user
> space to add (*, G) with a source list and filter mode.
> 
> The RTM_NEWMDB message can already dump such entries (created by the
> kernel) so there is no need to add dump support. However, the message
> contains a different set of attributes depending if it is a request or a
> response. The naming and structure of the new attributes try to follow
> the existing ones used in the response.
> 
> Request:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_SET_ENTRY ]
> 	struct br_mdb_entry
> [ MDBA_SET_ENTRY_ATTRS ]
> 	[ MDBE_ATTR_SOURCE ]
> 		struct in_addr / struct in6_addr
> 	[ MDBE_ATTR_SRC_LIST ]		// new
> 		[ MDBE_SRC_LIST_ENTRY ]
> 			[ MDBE_SRCATTR_ADDRESS ]
> 				struct in_addr / struct in6_addr
> 		[ ...]
> 	[ MDBE_ATTR_GROUP_MODE ]	// new
> 		u8
> 
> Response:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_MDB ]
> 	[ MDBA_MDB_ENTRY ]
> 		[ MDBA_MDB_ENTRY_INFO ]
> 			struct br_mdb_entry
> 		[ MDBA_MDB_EATTR_TIMER ]
> 			u32
> 		[ MDBA_MDB_EATTR_SOURCE ]
> 			struct in_addr / struct in6_addr
> 		[ MDBA_MDB_EATTR_RTPROT ]
> 			u8
> 		[ MDBA_MDB_EATTR_SRC_LIST ]
> 			[ MDBA_MDB_SRCLIST_ENTRY ]
> 				[ MDBA_MDB_SRCATTR_ADDRESS ]
> 					struct in_addr / struct in6_addr
> 				[ MDBA_MDB_SRCATTR_TIMER ]
> 					u8
> 			[...]
> 		[ MDBA_MDB_EATTR_GROUP_MODE ]
> 			u8
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Use an array instead of list to store source entries.
>     * Drop br_mdb_config_attrs_fini().
> 
>  include/uapi/linux/if_bridge.h |  20 +++++
>  net/bridge/br_mdb.c            | 130 +++++++++++++++++++++++++++++++++
>  2 files changed, 150 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

