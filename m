Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 890DD22CD14
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B67B88C0A;
	Fri, 24 Jul 2020 18:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALMlbXMYgn7B; Fri, 24 Jul 2020 18:22:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6EB6288A3E;
	Fri, 24 Jul 2020 18:21:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 57608C0052;
	Fri, 24 Jul 2020 18:21:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB90BC0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9D26203E4
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vVA+0DAIUo1l for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 228722040C
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=XLDR6JRuZhw83glApraWcLsuJCMjSCYHZGg/pZATLIo=; b=Nf98KMypoxCbppeY5fN+Qt92XU
 hTMrLQeon5LpLZPfzFNQuIZltX3/Ouc9JvkDakKTGfFnnMDOIop7OwHtVySWjh73+HNXAiynH+y2g
 9B1DFZb1E3TTo52fImVbl4rdp37dK4moxyFvSiwJU3CcRDbsoyzt+0o26P7ZfPkw7BFcUXeuDFtJ7
 e+O5aJ09EWLw/reqbRXN7xLVPsr0Nzj0fkLsVDabnwZOnmAi0rbVK49jM2ZS6k88x8vpCNeiNM3l8
 QVDR8jmy11u+t1+NQ+egYZcrN4efUA5Lv9p9Bb28X6ugcwZoX3XuqoN+YatgYwI/NDOEpFI7+bfN/
 QdU3/4Sg==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJmZ-00051G-Hx; Fri, 17 Jul 2020 06:23:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:10 +0200
Message-Id: <20200717062331.691152-2-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200717062331.691152-1-hch@lst.de>
References: <20200717062331.691152-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:35 +0000
Cc: linux-arch@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, Alexei Starovoitov <ast@kernel.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, linux-bluetooth@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 mptcp@lists.01.org, Chas Williams <3chas3@gmail.com>, netdev@vger.kernel.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, bpf@vger.kernel.org,
 linux-can@vger.kernel.org, linux-wpan@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH 01/22] net/atm: remove the atmdev_ops {get,
	set}sockopt methods
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

All implementations of these two methods are dummies that always
return -EINVAL.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/atm/eni.c        | 17 -----------------
 drivers/atm/firestream.c |  2 --
 drivers/atm/fore200e.c   | 27 ---------------------------
 drivers/atm/horizon.c    | 40 ----------------------------------------
 drivers/atm/iphase.c     | 16 ----------------
 drivers/atm/lanai.c      |  2 --
 drivers/atm/solos-pci.c  |  2 --
 drivers/atm/zatm.c       | 16 ----------------
 include/linux/atmdev.h   |  9 ---------
 net/atm/common.c         | 14 ++------------
 10 files changed, 2 insertions(+), 143 deletions(-)

diff --git a/drivers/atm/eni.c b/drivers/atm/eni.c
index 17d47ad03ab79e..b3d8e00e76716c 100644
--- a/drivers/atm/eni.c
+++ b/drivers/atm/eni.c
@@ -2027,21 +2027,6 @@ static int eni_ioctl(struct atm_dev *dev,unsigned int cmd,void __user *arg)
 	return dev->phy->ioctl(dev,cmd,arg);
 }
 
-
-static int eni_getsockopt(struct atm_vcc *vcc,int level,int optname,
-    void __user *optval,int optlen)
-{
-	return -EINVAL;
-}
-
-
-static int eni_setsockopt(struct atm_vcc *vcc,int level,int optname,
-    void __user *optval,unsigned int optlen)
-{
-	return -EINVAL;
-}
-
-
 static int eni_send(struct atm_vcc *vcc,struct sk_buff *skb)
 {
 	enum enq_res res;
@@ -2215,8 +2200,6 @@ static const struct atmdev_ops ops = {
 	.open		= eni_open,
 	.close		= eni_close,
 	.ioctl		= eni_ioctl,
-	.getsockopt	= eni_getsockopt,
-	.setsockopt	= eni_setsockopt,
 	.send		= eni_send,
 	.phy_put	= eni_phy_put,
 	.phy_get	= eni_phy_get,
diff --git a/drivers/atm/firestream.c b/drivers/atm/firestream.c
index cc87004d5e2d62..2ca9ec80273429 100644
--- a/drivers/atm/firestream.c
+++ b/drivers/atm/firestream.c
@@ -1277,8 +1277,6 @@ static const struct atmdev_ops ops = {
 	.send =         fs_send,
 	.owner =        THIS_MODULE,
 	/* ioctl:          fs_ioctl, */
-	/* getsockopt:     fs_getsockopt, */
-	/* setsockopt:     fs_setsockopt, */
 	/* change_qos:     fs_change_qos, */
 
 	/* For now implement these internally here... */  
diff --git a/drivers/atm/fore200e.c b/drivers/atm/fore200e.c
index f4ad7ce25ae8d1..a81bc49c14acc6 100644
--- a/drivers/atm/fore200e.c
+++ b/drivers/atm/fore200e.c
@@ -1710,31 +1710,6 @@ fore200e_getstats(struct fore200e* fore200e)
     return 0;
 }
 
-
-static int
-fore200e_getsockopt(struct atm_vcc* vcc, int level, int optname, void __user *optval, int optlen)
-{
-    /* struct fore200e* fore200e = FORE200E_DEV(vcc->dev); */
-
-    DPRINTK(2, "getsockopt %d.%d.%d, level = %d, optname = 0x%x, optval = 0x%p, optlen = %d\n",
-	    vcc->itf, vcc->vpi, vcc->vci, level, optname, optval, optlen);
-
-    return -EINVAL;
-}
-
-
-static int
-fore200e_setsockopt(struct atm_vcc* vcc, int level, int optname, void __user *optval, unsigned int optlen)
-{
-    /* struct fore200e* fore200e = FORE200E_DEV(vcc->dev); */
-    
-    DPRINTK(2, "setsockopt %d.%d.%d, level = %d, optname = 0x%x, optval = 0x%p, optlen = %d\n",
-	    vcc->itf, vcc->vpi, vcc->vci, level, optname, optval, optlen);
-    
-    return -EINVAL;
-}
-
-
 #if 0 /* currently unused */
 static int
 fore200e_get_oc3(struct fore200e* fore200e, struct oc3_regs* regs)
@@ -3026,8 +3001,6 @@ static const struct atmdev_ops fore200e_ops = {
 	.open       = fore200e_open,
 	.close      = fore200e_close,
 	.ioctl      = fore200e_ioctl,
-	.getsockopt = fore200e_getsockopt,
-	.setsockopt = fore200e_setsockopt,
 	.send       = fore200e_send,
 	.change_qos = fore200e_change_qos,
 	.proc_read  = fore200e_proc_read,
diff --git a/drivers/atm/horizon.c b/drivers/atm/horizon.c
index e5da51f907a25d..4f2951cbe69c08 100644
--- a/drivers/atm/horizon.c
+++ b/drivers/atm/horizon.c
@@ -2527,46 +2527,6 @@ static void hrz_close (struct atm_vcc * atm_vcc) {
   clear_bit(ATM_VF_ADDR,&atm_vcc->flags);
 }
 
-#if 0
-static int hrz_getsockopt (struct atm_vcc * atm_vcc, int level, int optname,
-			   void *optval, int optlen) {
-  hrz_dev * dev = HRZ_DEV(atm_vcc->dev);
-  PRINTD (DBG_FLOW|DBG_VCC, "hrz_getsockopt");
-  switch (level) {
-    case SOL_SOCKET:
-      switch (optname) {
-//	case SO_BCTXOPT:
-//	  break;
-//	case SO_BCRXOPT:
-//	  break;
-	default:
-	  return -ENOPROTOOPT;
-      };
-      break;
-  }
-  return -EINVAL;
-}
-
-static int hrz_setsockopt (struct atm_vcc * atm_vcc, int level, int optname,
-			   void *optval, unsigned int optlen) {
-  hrz_dev * dev = HRZ_DEV(atm_vcc->dev);
-  PRINTD (DBG_FLOW|DBG_VCC, "hrz_setsockopt");
-  switch (level) {
-    case SOL_SOCKET:
-      switch (optname) {
-//	case SO_BCTXOPT:
-//	  break;
-//	case SO_BCRXOPT:
-//	  break;
-	default:
-	  return -ENOPROTOOPT;
-      };
-      break;
-  }
-  return -EINVAL;
-}
-#endif
-
 #if 0
 static int hrz_ioctl (struct atm_dev * atm_dev, unsigned int cmd, void *arg) {
   hrz_dev * dev = HRZ_DEV(atm_dev);
diff --git a/drivers/atm/iphase.c b/drivers/atm/iphase.c
index 8c7a996d1f16cf..eef637fd90b323 100644
--- a/drivers/atm/iphase.c
+++ b/drivers/atm/iphase.c
@@ -2880,20 +2880,6 @@ static int ia_ioctl(struct atm_dev *dev, unsigned int cmd, void __user *arg)
    return 0;  
 }  
   
-static int ia_getsockopt(struct atm_vcc *vcc, int level, int optname,   
-	void __user *optval, int optlen)  
-{  
-	IF_EVENT(printk(">ia_getsockopt\n");)  
-	return -EINVAL;  
-}  
-  
-static int ia_setsockopt(struct atm_vcc *vcc, int level, int optname,   
-	void __user *optval, unsigned int optlen)  
-{  
-	IF_EVENT(printk(">ia_setsockopt\n");)  
-	return -EINVAL;  
-}  
-  
 static int ia_pkt_tx (struct atm_vcc *vcc, struct sk_buff *skb) {
         IADEV *iadev;
         struct dle *wr_ptr;
@@ -3164,8 +3150,6 @@ static const struct atmdev_ops ops = {
 	.open		= ia_open,  
 	.close		= ia_close,  
 	.ioctl		= ia_ioctl,  
-	.getsockopt	= ia_getsockopt,  
-	.setsockopt	= ia_setsockopt,  
 	.send		= ia_send,  
 	.phy_put	= ia_phy_put,  
 	.phy_get	= ia_phy_get,  
diff --git a/drivers/atm/lanai.c b/drivers/atm/lanai.c
index 645a6bc1df8886..986c1313694c66 100644
--- a/drivers/atm/lanai.c
+++ b/drivers/atm/lanai.c
@@ -2537,8 +2537,6 @@ static const struct atmdev_ops ops = {
 	.dev_close	= lanai_dev_close,
 	.open		= lanai_open,
 	.close		= lanai_close,
-	.getsockopt	= NULL,
-	.setsockopt	= NULL,
 	.send		= lanai_send,
 	.phy_put	= NULL,
 	.phy_get	= NULL,
diff --git a/drivers/atm/solos-pci.c b/drivers/atm/solos-pci.c
index b7646ae55942e6..94fbc3abe60e6a 100644
--- a/drivers/atm/solos-pci.c
+++ b/drivers/atm/solos-pci.c
@@ -1179,8 +1179,6 @@ static const struct atmdev_ops fpga_ops = {
 	.open =		popen,
 	.close =	pclose,
 	.ioctl =	NULL,
-	.getsockopt =	NULL,
-	.setsockopt =	NULL,
 	.send =		psend,
 	.send_oam =	NULL,
 	.phy_put =	NULL,
diff --git a/drivers/atm/zatm.c b/drivers/atm/zatm.c
index 57f97b95a4531c..2788b985edbe48 100644
--- a/drivers/atm/zatm.c
+++ b/drivers/atm/zatm.c
@@ -1515,20 +1515,6 @@ static int zatm_ioctl(struct atm_dev *dev,unsigned int cmd,void __user *arg)
 	}
 }
 
-
-static int zatm_getsockopt(struct atm_vcc *vcc,int level,int optname,
-    void __user *optval,int optlen)
-{
-	return -EINVAL;
-}
-
-
-static int zatm_setsockopt(struct atm_vcc *vcc,int level,int optname,
-    void __user *optval,unsigned int optlen)
-{
-	return -EINVAL;
-}
-
 static int zatm_send(struct atm_vcc *vcc,struct sk_buff *skb)
 {
 	int error;
@@ -1582,8 +1568,6 @@ static const struct atmdev_ops ops = {
 	.open		= zatm_open,
 	.close		= zatm_close,
 	.ioctl		= zatm_ioctl,
-	.getsockopt	= zatm_getsockopt,
-	.setsockopt	= zatm_setsockopt,
 	.send		= zatm_send,
 	.phy_put	= zatm_phy_put,
 	.phy_get	= zatm_phy_get,
diff --git a/include/linux/atmdev.h b/include/linux/atmdev.h
index 8124815eb1218b..5d5ff2203fa220 100644
--- a/include/linux/atmdev.h
+++ b/include/linux/atmdev.h
@@ -176,11 +176,6 @@ struct atm_dev {
 #define ATM_OF_IMMED  1		/* Attempt immediate delivery */
 #define ATM_OF_INRATE 2		/* Attempt in-rate delivery */
 
-
-/*
- * ioctl, getsockopt, and setsockopt are optional and can be set to NULL.
- */
-
 struct atmdev_ops { /* only send is required */
 	void (*dev_close)(struct atm_dev *dev);
 	int (*open)(struct atm_vcc *vcc);
@@ -190,10 +185,6 @@ struct atmdev_ops { /* only send is required */
 	int (*compat_ioctl)(struct atm_dev *dev,unsigned int cmd,
 			    void __user *arg);
 #endif
-	int (*getsockopt)(struct atm_vcc *vcc,int level,int optname,
-	    void __user *optval,int optlen);
-	int (*setsockopt)(struct atm_vcc *vcc,int level,int optname,
-	    void __user *optval,unsigned int optlen);
 	int (*send)(struct atm_vcc *vcc,struct sk_buff *skb);
 	int (*send_oam)(struct atm_vcc *vcc,void *cell,int flags);
 	void (*phy_put)(struct atm_dev *dev,unsigned char value,
diff --git a/net/atm/common.c b/net/atm/common.c
index 8575f5d52087d3..9b28f1fb3c69c8 100644
--- a/net/atm/common.c
+++ b/net/atm/common.c
@@ -782,13 +782,8 @@ int vcc_setsockopt(struct socket *sock, int level, int optname,
 			vcc->atm_options &= ~ATM_ATMOPT_CLP;
 		return 0;
 	default:
-		if (level == SOL_SOCKET)
-			return -EINVAL;
-		break;
-	}
-	if (!vcc->dev || !vcc->dev->ops->setsockopt)
 		return -EINVAL;
-	return vcc->dev->ops->setsockopt(vcc, level, optname, optval, optlen);
+	}
 }
 
 int vcc_getsockopt(struct socket *sock, int level, int optname,
@@ -826,13 +821,8 @@ int vcc_getsockopt(struct socket *sock, int level, int optname,
 		return copy_to_user(optval, &pvc, sizeof(pvc)) ? -EFAULT : 0;
 	}
 	default:
-		if (level == SOL_SOCKET)
-			return -EINVAL;
-		break;
-	}
-	if (!vcc->dev || !vcc->dev->ops->getsockopt)
 		return -EINVAL;
-	return vcc->dev->ops->getsockopt(vcc, level, optname, optval, len);
+	}
 }
 
 int register_atmdevice_notifier(struct notifier_block *nb)
-- 
2.27.0

