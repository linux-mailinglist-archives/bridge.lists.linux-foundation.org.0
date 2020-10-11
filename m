Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EB128AA1F
	for <lists.bridge@lfdr.de>; Sun, 11 Oct 2020 22:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48E6286FAD;
	Sun, 11 Oct 2020 20:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3Vh2QuCGPyz; Sun, 11 Oct 2020 20:15:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4676486F92;
	Sun, 11 Oct 2020 20:15:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 270F6C0051;
	Sun, 11 Oct 2020 20:15:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A29D3C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EC7D85DF2
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vz4tojD2j7OQ for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 20:15:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA03585570
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:15:38 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id ce10so20390681ejc.5
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 13:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fxGXbZ4rR3KKATBoIOvT5Bak7Llr7/4+tSdJ99Kd1/I=;
 b=vR2tB5CJHdjucZ7zY+9a/U7vQTK4GmhNLfBcXmfL2y1AUPIM6P/Ym55FGeMknQLLl4
 L4ksW3b5iTYcU/1P7j9HhnYtY1JNZjw2ve7gwkxRakdciGIibwq+hCJeglHVAevgYvt9
 mMB7ZRNDGU1VQS4DNzx1qgWgGKh1MJpGRFsT2U4HY7bvfe0XW0wC+ZZ4AOBakX2SwbJy
 1GKeS1ngNe8F1pka0ROx60/QpLrQpsl0SVSlL/8txvDVzChEj4NDMLyCyqF3RNaF/U7o
 11pNNeHoMuI0SiGKBiH9183giapE7dUdewbP1kN0il2Yszl0B3I4Oktz/cN2+INnvkyk
 Zobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fxGXbZ4rR3KKATBoIOvT5Bak7Llr7/4+tSdJ99Kd1/I=;
 b=BRhGOZzRqMER8IJvjhtJh19c+U4ncJHPEd3n7wTeD/LqA9XIBLU1uaczL2/aCS0+JY
 Qu152wI0Mck6HDiozavlwoRy2OS44WdOkd6tdPu2s4af7IKBeuDP4PEPgurD+hH26L+z
 QLdGfSeo13V3KncNZZdy9qUm/5r1qL+YQL+zQsU/fgoPwXvcheuipEcJzwTfx9Fgfx1W
 kfvaBBgS3PjrOGR7UBjeVTI43RjOnXyY4VRvFuiT+Bv7DbCnIJl2pt1n2GrNwIDbDsNo
 yUb5rS5ZedQYGoGMYtnp+SYHR3djDDVUx/RzW3pVTMRHH/9soQ1IeTAfLcrkbuGCXXfs
 a5qQ==
X-Gm-Message-State: AOAM531uw7Df3EMJAss6aHUI5y3HWpyyWYhM675uIGsL3UYkOeAzW0ia
 c7zBJpR/brLKXWlOyux512o=
X-Google-Smtp-Source: ABdhPJyrL+uXyP76lDNPTj7UgemLEokJ87Hdl817rKRMHxcMgiQkItyZWwOyv5YUb4bbWf0jmBaG2w==
X-Received: by 2002:a17:906:60d3:: with SMTP id
 f19mr25947736ejk.141.1602447337068; 
 Sun, 11 Oct 2020 13:15:37 -0700 (PDT)
Received: from skbuf ([188.26.174.215])
 by smtp.gmail.com with ESMTPSA id mh2sm9743353ejb.30.2020.10.11.13.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Oct 2020 13:15:36 -0700 (PDT)
Date: Sun, 11 Oct 2020 23:15:34 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201011201534.ybeb4foumck4bpmw@skbuf>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <4c7b9a8d-caa2-52dd-8973-10f4e2892dd6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c7b9a8d-caa2-52dd-8973-10f4e2892dd6@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, David Miller <davem@davemloft.net>,
 =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next 08/12] net: dsa: use new function
 dev_fetch_sw_netstats
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

On Sun, Oct 11, 2020 at 09:41:27PM +0200, Heiner Kallweit wrote:
> Simplify the code by using new function dev_fetch_sw_netstats().
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---

Tested-by: Vladimir Oltean <olteanv@gmail.com>
