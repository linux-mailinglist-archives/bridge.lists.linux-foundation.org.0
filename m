Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B91744BC744
	for <lists.bridge@lfdr.de>; Sat, 19 Feb 2022 10:57:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E41DC41BF3;
	Sat, 19 Feb 2022 09:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ujfS8FBgGYYP; Sat, 19 Feb 2022 09:56:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id ED3F241BFF;
	Sat, 19 Feb 2022 09:56:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6468EC0073;
	Sat, 19 Feb 2022 09:56:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 31C57C000B
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B4CF60B28
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ilzFsBkMXD8P for <bridge@lists.linux-foundation.org>;
 Sat, 19 Feb 2022 09:56:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6365F6059E
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 09:56:53 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id gb39so20648108ejc.1
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 01:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Y7dI/kyXtQ5r7J/1JCw2+N0TiORB8W3a63ggFTECDo4=;
 b=ZA9bzecfezxlqpIiccEI1K27SXLtnJUjvIEbkbGMkLbgdFc1iGqVU85mJgKlmd27Ss
 HiozbCv7C4S2YiTIssUYYUrd0zqxKkMq6vZp4b0cc50nSW9sRoZd1xATLPxnA8jK7wLF
 XY4FIbMD9X2B0LBasRTc3GMGMw8dHw1M9eL8AFSUBju46diRXcQtCFpV7+jUvB5E5N9i
 1XzzVYYVTWtDWd5gJTGboaBXVKZYhalyZNB8qRLe/rMs4QA5+LG75iWuzuV+EEGww2Ua
 pYVu/YUJK7gKO3hNz6QCVJP9y7Bybqbrbr980TjsvqkWiuKlhznug6XWMkd5seDCAUXf
 u5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Y7dI/kyXtQ5r7J/1JCw2+N0TiORB8W3a63ggFTECDo4=;
 b=1Vvusd4gpuoxObUcAJmx/myUqxs/BUaghiuznVY4ig39pN1GDC1s27Z3I9R6TA9B4I
 2X2vE2qfkyyMd0RbsbHDxgvhjsV+r2aWhPp9AAHh1KNduuQsSlDyR7nbXwfuGXIupGxd
 1JNUkLJqN+FOcBGW7XTwjNC6lofKO9dZXWlBnkslgokzFGGXBoa2+OJxG55sQBLL/GDQ
 IURhmrJp9LE7e4F8QWisbAesL22SgXSdVHK2Nwb6MxBHqvlZgJZ51uDogYetdpK0etWl
 Nn+JUXjeVKGYtdbF/XZNBAZeZENykCxnVDCXoLNl94Gbvm1niCZerZUPMciFZeJWEiAb
 /IpQ==
X-Gm-Message-State: AOAM532yte/EqKtFa3RJaisHtOXXzy9xqPvwP/Uhn0C42bsxulGHO9tg
 3UHcKwV2CMgAeiPokkIETVM=
X-Google-Smtp-Source: ABdhPJw4Qrnkv2nVfARx+UT+8eb2/HWEusUffAfr14s7FY4OFC+GO4J8rN+JqiY75Bv0rz9G6LWSxw==
X-Received: by 2002:a17:906:2f97:b0:6ce:3ef6:94be with SMTP id
 w23-20020a1709062f9700b006ce3ef694bemr9519064eji.136.1645264611500; 
 Sat, 19 Feb 2022 01:56:51 -0800 (PST)
Received: from skbuf ([188.27.184.105])
 by smtp.gmail.com with ESMTPSA id t4sm6165304edd.7.2022.02.19.01.56.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Feb 2022 01:56:51 -0800 (PST)
Date: Sat, 19 Feb 2022 11:56:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220219095649.zaa7exduogwbpyyh@skbuf>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-4-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220218155148.2329797-4-schultz.hans+netdev@gmail.com>
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Stephen Suryaputra <ssuryaextr@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 3/5] net: dsa: Add support for
 offloaded locked port flag
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

On Fri, Feb 18, 2022 at 04:51:46PM +0100, Hans Schultz wrote:
> Among the switchcores that support this feature is the Marvell
> mv88e6xxx family.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

Although this doesn't "add support for offloaded locked ports", that
passes right through with no DSA-level filtering, from
SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS to dsa_port_bridge_flags(),
to ds->ops->port_bridge_flags().

Rather, a clearer description of what this does is:

net: dsa: include BR_PORT_LOCKED in the list of synced brport flags

Make sure the DSA switch driver gets notified of changes to the
BR_PORT_LOCKED flag as well, for the case when a DSA port joins or
leaves a LAG that is a bridge port.
